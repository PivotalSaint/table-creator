const express = require('express');
const { route } = require('.');
const router = express.Router();
const db = require('../../db/connect');
const inputCheck = require('../../utils/inputCheck');

router.get('/manager', (req, res) => {
    const sql = `SELECT * FROM manager ORDER BY last_name`;

    db.query(sql, (err, rows) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }
        res.json({
            message: 'success',
            data: rows
        });
    });
});

router.get('/manager/:id', (req, res) => {
    const sql = `SELECT * FROM manager WHERE id = ?`;
    const params = [req.params.id];

    db.query(sql, params, (err, row) => {
        if (err) {
            res.status(400).json({ error: err.message });
            return;
        }
        res.json({
            message: 'success',
            data: row
        });
    });
});

router.post('/manager', ({ body }, res) => {
    const errors = inputCheck(body, 'first_name', 'last_name', 'department');
    if (errors) {
        res.status(400).json({ error: errors });
        return;
    }

    const sql = `INSERT INTO manager (first_name, last_name, department) VALUES (?,?,?)`;
    const params = [body.first_name, body.last_name, body.department];

    db.query(sql, params, (err, result) => {
        if (err) {
            res.status(400).json({ error: err.message });
            return;
        }
        res.json({
            message: 'success',
            data: body
        });
    });
});

router.put('/manager/:id', (req, res) => {
    const errors = inputCheck(req.body, 'department');
    if (errors) {
        res.status(400).json({ error: errors });
        return;
    }
    const sql = `UPDATE manager SET department = ? WHERE id = ?`;
    const params = [req.body.department, req.params.id];

    db.query(sql, params, (err, result) => {
        if (err) {
            res.status(400).json({ error: err.message });
        } else if (!result.affectedRows) {
            res.json({
                message: 'manager not found'
            });
        } else {
            res.json({
                message: 'success',
                data: req.body,
                changes: result.affectedRows
            });
        }
    });
});

router.delete('/manager/:id', (req, res) => {
    const sql = `DELETE FROM manager WHERE id = ?`;

    db.query(sql, req.params.id, (err, result) => {
        if (err) {
            res.status(400).json({ error: res.message});
        } else if (!result.affectedRows) {
            res.json({
                message: 'deleted',
                changes: result.affectedRows,
                id: req.params.id
            });
        }
    });
});

module.exports = router;