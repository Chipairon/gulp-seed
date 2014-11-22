var gulp = require('gulp');
var sass = require('gulp-sass');
var handleErrors = require('../util/handleErrors');
var config = require('../config').sass;

gulp.task('sass', ['images'], function () {
  return gulp.src(config.src)
    .pipe(sass({
      sourcemap: true,
      sourcemapPath: '../sass',
      // set this to true to disable visual notificationand see instead the error on console:
      errLogToConsole: false
    }))
    .on('error', handleErrors)
    .pipe(gulp.dest(config.dest));
});
