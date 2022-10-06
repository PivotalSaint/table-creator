const mysql = require('mysql2');

const db = mysql.createConnection(
  process.env.DB_NAME,
  process.env.DB_USER,
  process.env.DB_PASSWORD,
  {
  host: 'localhost',
  user: 'root',
  password: 'password',
  name: 'name'
  }
);

module.exports = db;