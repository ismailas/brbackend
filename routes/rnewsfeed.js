var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Newsfeed = require('../model/newsfeed.js')

/* GET users listing. */
router.get('/', function(req, res, next) {
    return Newsfeed.findAndCountAll({

    }).then(function(newsfeed) {
        res.send(newsfeed);
    })
});

/* GET users listing. */
router.get('/:newsfeed_id', function(req, res, next) {
    return Newsfeed.findOne({
        where: {
            newsfeed_id: req.params.newsfeed_id
        }
    }).then(function(newsfeed) {
        res.send(newsfeed);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    return Newsfeed.create({
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(newsfeed) {
        res.send(newsfeed);
    })

});

/* EDIT users listing. */
router.put('/:newsfeed_id', function(req, res, next) {
    var data = req.body;
    return Newsfeed.update({
        where: {
            newsfeed_id: req.params.newsfeed_id
        }
    }, {
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(newsfeed) {
        res.send(newsfeed);
    })
});

/* DELETE users listing. */
router.delete('/:newsfeed_id', function(req, res, next) {
    return Newsfeed.destroy({
        where: {
            newsfeed_id: req.params.newsfeed_id
        }
    }).then(function(newsfeed) {
        res.send(newsfeed);
    })

});


module.exports = router;
