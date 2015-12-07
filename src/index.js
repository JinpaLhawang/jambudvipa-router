'use strict';

var debug = require('debug')('index');

module.exports = function () {

  return {
    healthcheck: healthcheck
  };

  function healthcheck(callback) {
    debug('Healthcheck: OK');
    callback(null, 'OK');
  }
};
