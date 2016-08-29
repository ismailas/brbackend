var Sequelize = require("sequelize");
var sequelize = require("./index");
var Histori = require("./histori");
var Newsfeed = require("./newsfeed");
var Bloodcall = require("./bloodcall");

var User = sequelize.define('users', {
  users_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  firstname: {
    type: Sequelize.STRING
  },
  lastname: {
    type: Sequelize.STRING
  },
  birthdate: {
    type: Sequelize.DATE
  },
  goldar: {
    type: Sequelize.STRING
  },
  jumdon: {
    type: Sequelize.INTEGER
  },
  firstjumdon: {
    type: Sequelize.INTEGER
  },
  lastdonate: {
    type: Sequelize.DATE
  },
  email: {
    type: Sequelize.STRING
  },
  password: {
    type: Sequelize.STRING
  },
  status: {
    type: Sequelize.BOOLEAN
  },
  histori_id: {
    type: Sequelize.INTEGER
  },
  typeuser: {
    type: Sequelize.BOOLEAN
  },
  bloodcall_id: {
    type: Sequelize.INTEGER
  },
  newsfeed_id: {
    type: Sequelize.INTEGER
  },
  cabang: {
    type: Sequelize.STRING
  }

});

User.hasMany(Histori, {as: 'histori', foreignKey: 'histori_id'});
User.hasMany(Newsfeed, {as: 'newsfeed', foreignKey: 'newsfeed_id'});
User.hasMany(Bloodcall, {as: 'bloodcall', foreignKey: 'bloodcall_id'});

module.exports = User;
