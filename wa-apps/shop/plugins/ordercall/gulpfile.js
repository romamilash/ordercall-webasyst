const gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
const sourcemaps = require('gulp-sourcemaps');
const minify = require('gulp-minify');

gulp.task('sass', function(done){
    gulp.src('./src/style.scss')
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.write())
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(gulp.dest('./css'));
    done();
});

gulp.task('compress-js', function (done) {
    gulp.src(['./src/script.js'])
        .pipe(minify())
        .pipe(gulp.dest('./js'));
    done();
});

gulp.task('build', gulp.series('compress-js', 'sass'));

gulp.task('watch', function(){
    gulp.watch('./src/style.scss', gulp.series('sass'));
});