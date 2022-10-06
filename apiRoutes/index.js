const express = require('express');
const router = express.Router();

router.use(require('./employee'));
router.use(require('./manager'));
router.use(require('./employeeRole'));

module.exports = router;
