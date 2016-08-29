var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Bloodcall = require('../model/bloodcall.js')

/* GET users listing. */
router.get('/', function(req, res, next) {
    return Bloodcall.findAndCountAll({

    }).then(function(bloodcall) {
        res.send(bloodcall);
    })
});

/* GET users listing. */
router.get('/:bloodcall_id', function(req, res, next) {
    return Bloodcall.findOne({
        where: {
            bloodcall_id: req.params.bloodcall_id
        }
    }).then(function(bloodcall) {
        res.send(bloodcall);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    return Bloodcall.create({
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(bloodcall) {
        res.send(bloodcall);
    })

});

/* EDIT users listing. */
router.put('/:bloodcall_id', function(req, res, next) {
    var data = req.body;
    return Bloodcall.update({
        where: {
            bloodcall_id: req.params.bloodcall_id
        }
    }, {
        firstname: data.firstname,
        lastname: data.lastname
    }).then(function(bloodcall) {
        res.send(bloodcall);
    })
});

/* DELETE users listing. */
router.delete('/:bloodcall_id', function(req, res, next) {
    return Bloodcall.destroy({
        where: {
            bloodcall_id: req.params.bloodcall_id
        }
    }).then(function(bloodcall) {
        res.send(bloodcall);
    })

});


module.exports = router;
