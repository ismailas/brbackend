var Sequelize = require("sequelize");
var sequelize = require("./index");
var User = require("./user");

var Bloodcall = sequelize.define('bloodcall', {
  bloodcall_id: {
    type: Sequelize.INTEGER,
    primaryKey: true
  },
  bcdate: {
      type: Sequelize.DATE
  },
  bcgoldar: {
      type: Sequelize.STRING
  },
  bcatasnama: {
      type: Sequelize.STRING
  },
  bcketerangan: {
      type: Sequelize.STRING
  },
  bcstatus: {
      type: Sequelize.BOOLEAN
  },
  bcpriority: {
      type: Sequelize.STRING
  },
  users_id: {
      type: Sequelize.INTEGER
  }
}, {
    tableName   : 'bloodcall',
    createdAt   : 'created_at',
    updatedAt   : 'updated_at',
});

// Bloodcall.belongsTo(User, {as: 'users', foreignKey: 'users_id'});

module.exports = Bloodcall;
