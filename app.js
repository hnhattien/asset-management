var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const dotenv = require('dotenv')
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
const { syncJob } = require('./jobs/sync_job');

dotenv.config(process.env.NODE_ENV === 'production' ? '.env' : '.env.dev')
require('./db/database')

syncJob.start();

var app = express();

// view engine setup

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
