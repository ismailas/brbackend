var Sequelize = require("sequelize");
var sequelize = require("./index");
var Event = require("./event");

var Histori = sequelize.define('histori', {
  histori_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  hisdate: {
    type: Sequelize.DATE
  },
  type: {
      type: Sequelize.STRING
  }
}, {
    tableName   : 'histori',
    createdAt   : 'created_at',
    updatedAt   : 'updated_at',
});


Histori.belongsTo(Event, {as: 'event', foreignKey: 'event_id'});

module.exports = Histori;
