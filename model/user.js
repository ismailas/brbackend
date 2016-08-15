var Sequelize = require("sequelize");
var sequelize = require("./index");
var Histori = require("./histori");

var User = sequelize.define('users', {
  firstname: {
    type: Sequelize.STRING,
  },
  lastname: {
    type: Sequelize.STRING
  },
  histori_id: {
    type: Sequelize.INTEGER
  }
});

User.hasMany(Histori, {as: 'histori', foreignKey: 'histori_id'});

module.exports = User;
