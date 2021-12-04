const express = require('express')
const router = express.Router()
const trip = require('../models/trip')
const passport = require('passport')
const requireToken = passport.authenticate('bearer', { session: false })
const customErrors = require('../../lib/custom_errors')
const handle404 = customErrors.handle404
const requireOwnership = customErrors.requireOwnership
const removeBlanks = require('../../lib/remove_blank_fields')

// CREATE
// POST /trips/
router.post('/trips', requireToken, (req, res, next) => {
  const tripData = req.body.trip
  req.body.trip.owner = req.user.id
  trip.create(tripData)
    .then(trip => res.status(201).json({trip}))
    .catch(next)
})

// INDEX
// GET /trips
router.get('/trips', (req, res, next) => {
  trip.find()
    .then(trip => res.json({trip}))
    .catch(next)
})

// SHOW
// GET /trips/:id
router.get('/trips/:id', requireToken, (req, res, next) => {
  // req.params.id will be set based on the `:id` in the route
  trip.findById(req.params.id)
    .then(handle404)
  // if `findById` is successful, respond with 200 and "trip" JSON
    .then((trip) => res.status(200).json({ trip }))
  // if an error occurs, pass it to the handler
    .catch(next)
})

// UPDATE
// PATCH /trips/5a7db6c74d55bc51bdf39793
router.patch('/trips/:id', requireToken, removeBlanks, (req, res, next) => {
  // if the client attempts to change the `owner` property by including a new
  // owner, prevent that by deleting that key/value pair
  // delete req.body.trip.owner
  console.log(req.body)
  trip.findById(req.params.id)
    .then(handle404)
    // ensure the signed in user (req.user.id) is the same as the trip's owner (trip.owner)
    .then(trip => requireOwnership(req, trip))
    // updating trip object with tripData
    .then(trip => trip.updateOne(req.body.trip))
    // if that succeeded, return 204 and no JSON
    .then(() => res.sendStatus(204))
    // if an error occurs, pass it to the handler
    .catch(next)
})

// DELETE
router.delete('/trips/:id', requireToken, (req, res, next) => {
  trip.findById(req.params.id)
    .then(handle404)
  // ensure the signed in user (req.user.id) is the same as the trip's owner (trip.owner)
    .then((trip) => requireOwnership(req, trip))
  // delete trip from mongodb
    .then((trip) => trip.deleteOne())
  // send back 204 and no content if the deletion succeeded
    .then(() => res.sendStatus(204))
  // if an error occurs, pass it to the handler
    .catch(next)
})

module.exports = router
