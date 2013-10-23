/* Exports an object that defines
 *  all of the paths & globs that the project
 *  is concerned with.
 *
 * The "configure" task will require this file and
 *  then re-initialize the grunt config such that
 *  directives like <config:files.js.app> will work
 *  regardless of the point you're at in the build
 *  lifecycle.
 *
 * To see the default definitions for all of Lineman's file paths and globs, look at:
 * https://github.com/testdouble/lineman/blob/master/config/files.coffee
 */

module.exports = require(process.env['LINEMAN_MAIN']).config.extend('files', {
  js: {
    vendor: [
      "vendor/js/jquery.js",
      "vendor/js/lodash.js",
      "vendor/js/backbone.js"
    ]
  },
  coffee: {
    app: [
      "app/js/app.js.coffee",
      "app/js/models/**/*.js.coffee",
      "app/js/collections/**/*.js.coffee",
      "app/js/views/**/*.js.coffee",
      "app/js/router.js.coffee"
    ]
  }
});
