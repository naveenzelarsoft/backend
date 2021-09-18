//const env = require('./env.js');
 
const Sequelize = require('sequelize');
const sequelize = new Sequelize(process.env.database, process.env.username, process.env.password, {
  host: process.env.host,
  operatorsAliases: false,
 
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});
const db = {};
 
db.Sequelize = Sequelize;
db.sequelize = sequelize;
 
db.Customer = require('../models/customer.model.js')(sequelize, Sequelize);

module.exports = db;