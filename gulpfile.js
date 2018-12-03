/* 
 * @Author: Marte
 * @Date:   2018-12-03 11:25:55
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-12-03 13:02:48
 */



var gulp = require('gulp');

//布置任务：压缩css文件
var cssmin = require('gulp-cssmin');
gulp.task('cssmin', function() {
    return gulp.src('src/css/*.css')
        .pipe(cssmin())
        .pipe(gulp.dest('dist/css'));
});


//压缩图片
var imagemin = require('gulp-imagemin');
gulp.task('imagemin', function() {
    return gulp.src('src/img/index/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/index'));
});
gulp.task('imagemin2', function() {
    return gulp.src('src/img/cart/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/cart'));
});
gulp.task('imagemin3', function() {
    return gulp.src('src/img/reglog/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/reglog'));
});
gulp.task('imagemin4', function() {
    return gulp.src('src/img/list/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/list'));
});
gulp.task('imagemin5', function() {
    return gulp.src('src/img/details/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/details'));
});
gulp.task('imagemin6', function() {
    return gulp.src('src/img/goodimg/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img/goodimg'));
});

// es6-->es5
var babel = require('gulp-babel');

gulp.task('babel',function(){
    gulp.src('src/js/*.js')
    .pipe(babel({
        'presets':['es2015']
    }))
    .pipe(gulp.dest('dist/es5'))
});

//压缩js并重命名
var uglify=require('gulp-uglify');

gulp.task('uglify',function(){
  return gulp.src('dist/es5/*.js')
             .pipe(uglify())
             .pipe(gulp.dest('dist/js'));
});