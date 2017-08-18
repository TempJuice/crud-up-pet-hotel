var pg = require("pg");

var config = {
  database: "pet_hotel", // name of our database
  host: "localhost", //location of database
  port: 5432, // port for the database
  max: 10, // number of connections
  idleTimeoutMillis: 30000 //30 seconds to connect
};

module.exports = new pg.Pool(config);