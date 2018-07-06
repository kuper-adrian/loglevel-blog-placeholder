var express = require('express');
var router = express.Router();

/* GET home page. */
router
  .get('/', function(req, res) {
    res.render('index', { title: 'log-level: blog' });
  })
  .get('/about', (req, res) => {
    res.render('about', { title: 'about - log-level: blog' });
  })
  .get('/impressum', (req, res) => {
    res.render('impressum', { title: 'impressum - log-level: blog' });
  });

module.exports = router;
