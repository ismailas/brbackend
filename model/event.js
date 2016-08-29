var Sequelize = require("sequelize");
var sequelize = require("./index");
var User = require("./user");

var Event = sequelize.define('event', {
  event_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  evname: {
      type: Sequelize.STRING
  },
  evorganizer: {
      type: Sequelize.STRING
  },
  evaddress: {
      type: Sequelize.STRING
  },
  evlat: {
      type: Sequelize.INTEGER
  },
  evlong: {
      type: Sequelize.INTEGER
  },
  evdate: {
      type: Sequelize.DATE
  },
  users_id: {
      type: Sequelize.INTEGER
  }
}, {
    tableName   : 'event',
    createdAt   : 'created_at',
    updatedAt   : 'updated_at',
});

// Event.belongsTo(User, {as: 'users', foreignKey: 'users_id'});


module.exports = Event;
