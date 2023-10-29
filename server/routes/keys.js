const keys = require('../keys');
var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  var data = {
    redis_host: keys.redisHost,
    redis_port: keys.redisPort
  }
  res.send(data);
});

module.exports = router;
