var gulp = require('gulp');

gulp.task('build', ['lint', 'browserify', 'sass', 'images', 'jade', 'jst', 'markup', 'fonts']);
