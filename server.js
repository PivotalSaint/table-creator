const inquirer = require('inquirer');
const express = require('express');
const db = require('./db/connect.js');
const apiRoutes = require('./apiRoutes');

const PORT = process.env.PORT || 3040;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

app.use('/api', apiRoutes);

app.use((req, res) => {
  res.status(404).end();
});

db.connect(err => {
  if (err) throw err;
  console.log('Database connected.');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});
