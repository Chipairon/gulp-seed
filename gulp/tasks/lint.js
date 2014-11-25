var gulp = require('gulp');
var handleErrors = require('../util/handleErrors');
var coffeelint = require('gulp-coffeelint');

gulp.task('lint', function () {
  return gulp.src('./src/**/*.coffee')
    .pipe(coffeelint())
    .pipe(coffeelint.reporter())
});
