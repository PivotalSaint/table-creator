const mysql = require('mysql2');

const db = mysql.createConnection(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
  host: 'DB_USER',
  password: 'DB_PASSWORD',
  name: 'DB_NAME'
  }
);

module.exports = db;