var Sequelize = require("sequelize");
var sequelize = require("./index");

var Event = sequelize.define('event', {
  event_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  evname: {
      type: Sequelize.STRING
  }
}, {
    tableName: 'event',
    createdAt   : 'created_at',
    updatedAt   : 'updated_at',
});


//Histori.belongsTo(Event, {as: 'event', foreignKey: 'event_id'});

module.exports = Event;
