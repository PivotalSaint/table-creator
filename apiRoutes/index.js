const express = require('express');
const router = express.Router();

router.use(require('./employeeRoute'));
router.use(require('./managerRoute'));
router.use(require('./roleRoute'));

module.exports = router;
