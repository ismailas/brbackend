var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Histori = require('../model/histori.js')
var Event = require('../model/event.js')

/* GET users listing. */
router.get('/', function(req, res, next) {
    return User.findAndCountAll({
        include: [{
            model: Histori,
            as: 'histori',
            include: [{
                model: Event,
                as: 'event'
            }]
        }]
    }).then(function(user) {
        res.send(user);
    })
});

/* GET users listing. */
router.get('/:id', function(req, res, next) {
    return User.findOne({
        where: {
            id: req.params.id
        },
        include: [{
            model: Histori,
            as: 'histori',
            include: [{
                model: Event,
                as: 'event'
            }]
        }]
    }).then(function(user) {
        res.send(user);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    return User.create({
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(user) {
        res.send(user);
    })

});

/* POST users listing. */
router.put('/:id', function(req, res, next) {
    var data = req.body;
    return User.update({
        where: {
            id: req.params.id
        }
    }, {
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(user) {
        res.send(user);
    })

});

/* POST users listing. */
router.delete('/:id', function(req, res, next) {
    return User.destroy({
        where: {
            id: req.params.id
        }
    }).then(function(user) {
        res.send(user);
    })

});


module.exports = router;
