var Sequelize = require("sequelize");
var sequelize = require("./index");
var User = require("./user");

var Newsfeed = sequelize.define('newsfeed', {
  newsfeed_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  nfjudul: {
      type: Sequelize.STRING
  },
  nfimage: {
      type: Sequelize.STRING
  },
  nfcontent: {
      type: Sequelize.STRING
  },
  nfdate: {
      type: Sequelize.STRING
  },
  users_id: {
      type: Sequelize.INTEGER
  }
}, {
    tableName   : 'newsfeed',
    createdAt   : 'created_at',
    updatedAt   : 'updated_at',
});

// Newsfeed.belongsTo(User, {as: 'users', foreignKey: 'users_id'});

module.exports = Newsfeed;
