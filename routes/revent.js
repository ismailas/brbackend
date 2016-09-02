var express = require('express');
var router = express.Router();
var User = require('../model/user.js')
var Event = require('../model/event.js')

/* GET users listing. */
router.get('/', function(req, res, next) {
    return Event.findAndCountAll({

    }).then(function(events) {
        res.send(events);
    })
});

/* GET users listing. */
router.get('/:event_id', function(req, res, next) {
    return Event.findOne({
        where: {
            event_id: req.params.event_id
        }
    }).then(function(events) {
        res.send(events);
    })
});

/* POST users listing. */
router.post('/', function(req, res, next) {
    var data = req.body;
    return Event.create({
        evname      : data.evname,
        evorganizer : data.evorganizer,
        evaddress   : data.evaddress,
        evlat       : data.evlat,
        evlng       : data.evlng,
        evdate      : data.evdate,
        users_id    : data.users_id,
    }).then(function(events) {
        res.send(events);
    })

});

/* EDIT users listing. */
router.put('/:event_id', function(req, res, next) {
    var data = req.body;
    return Event.update({
        evname      : data.evname,
        evorganizer : data.evorganizer,
        evaddress   : data.evaddress,
        evlat       : data.evlat,
        evlng       : data.evlng,
        evdate      : data.evdate,
    },{
        where: {
            event_id: req.params.event_id
        }
    }).then(function(events) {
        res.send(events);
    })
});

/* DELETE users listing. */
router.delete('/:event_id', function(req, res, next) {
    return Bloodcall.destroy({
        where: {
            event_id: req.params.event_id
        }
    }).then(function(events) {
        res.send(events);
    })

});


module.exports = router;
