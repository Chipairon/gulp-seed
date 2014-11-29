var gulp = require('gulp');
var sass = require('gulp-sass');
var handleErrors = require('../util/handleErrors');
var config = require('../config').sass;

gulp.task('sass', ['images'], function () {
  return gulp.src(["./src/sass/*.{sass,scss}", "./node_modules/bootstrap-sass/assets/stylesheets/**/*.{sass,scss}"])
    .pipe(sass({
      sourcemap: true,
      sourcemapPath: '../sass',
      // set this to true to disable visual notificationand see instead the error on console:
      errLogToConsole: false
    }))
    .on('error', handleErrors)
    .pipe(gulp.dest(config.dest));
});
