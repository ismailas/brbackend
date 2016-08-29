var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Histori = require('../model/histori.js')
var Event = require('../model/event.js')
var Newsfeed = require('../model/newsfeed.js')
var Bloodcall = require('../model/bloodcall.js')

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
        },{
            model: Newsfeed,
            as: 'newsfeed'
        },{
            model: Bloodcall,
            as: 'bloodcall'
        }]
    }).then(function(user) {
        res.send(user);
    })
});


/* GET users listing. */
router.get('/:users_id', function(req, res, next) {
    return User.findOne({
        where: {
            users_id: req.params.users_id
        },
        include: [{
            model: Histori,
            as: 'histori',
            include: [{
                model: Event,
                as: 'event'
            }]
        },{
            model: Newsfeed,
            as: 'newsfeed'
        },{
            model: Bloodcall,
            as: 'bloodcall'
        }]
    }).then(function(user) {
        res.send(user);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    console.log('tes');
    console.log(data);
    return User.create({
        firstname     : data.firstname,
        lastname      : data.lastname,
        birthdate     : data.birthdate,
        goldar        : data.goldar,
        jumdon        : data.jumdon,
        firstjumdon   : data.firstjumdon,
        lastdonate    : data.lastdonate,
        email         : data.email,
        password      : data.password
    }).then(function(user) {
        res.send(user);
        console.log(data);
    })

});


router.post('/login', function(req, res, next) {
    var data = req.body;
    console.log('tes');
    console.log(data);
    return User.findOne({
        where: {
            email       : data.email,
            password    : data.password
        }
    }).then(function(user) {
        res.send(user);
        console.log(data);
    })

});

/* EDIT users listing. */
router.put('/:users_id', function(req, res, next) {
    var data = req.body;
    return User.update({
        where: {
            users_id: req.params.users_id
        }
    }, {
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(user) {
        res.send(user);
    })
});

/* DELETE users listing. */
router.delete('/:users_id', function(req, res, next) {
    return User.destroy({
        where: {
            users_id: req.params.users_id
        }
    }).then(function(user) {
        res.send(user);
    })

});


module.exports = router;
