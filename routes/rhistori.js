var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Histori = require('../model/histori.js')
var Event = require('../model/event.js')

/* GET users listing. */
router.get('/', function(req, res, next) {
    return Histori.findAndCountAll({

    }).then(function(histori) {
        res.send(histori);
    })
});

/* GET users listing. */
router.get('/:histori_id', function(req, res, next) {
    return Histori.findOne({
        where: {
            histori_id: req.params.histori_id
        }
    }).then(function(histori) {
        res.send(histori);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    return Histori.create({
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(histori) {
        res.send(histori);
    })

});

/* EDIT users listing. */
router.put('/:histori_id', function(req, res, next) {
    var data = req.body;
    return Histori.update({
        where: {
            histori_id: req.params.histori_id
        }
    }, {
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(histori) {
        res.send(histori);
    })
});

/* DELETE users listing. */
router.delete('/:histori_id', function(req, res, next) {
    return Histori.destroy({
        where: {
            histori_id: req.params.histori_id
        }
    }).then(function(histori) {
        res.send(histori);
    })

});


module.exports = router;
