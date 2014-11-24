var gulp = require('gulp');
var jade = require('gulp-jade');
var handleErrors = require('../util/handleErrors');
var jst = require('gulp-jst-concat')
var configJadeViews = require('../config').jadeViews;
var configJadeJst = require('../config').jadeJst;

gulp.task('jade', ['images'], function () {
  return gulp.src(configJadeViews.src)
    .pipe(jade({
      pretty: true
    }))
    .on('error', handleErrors)
    .pipe(gulp.dest(configJadeViews.dest));
});
gulp.task('jst', function () {
  return gulp.src(configJadeJst.src)
    .pipe(jade({
      pretty: true
    }))
    .pipe(jst('jst.js', {
      renameKeys: ['^.*templates/(.*).html$', '$1']
    }))
    .on('error', handleErrors)
    .pipe(gulp.dest(configJadeJst.dest));
});
