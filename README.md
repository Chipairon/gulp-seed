Chipairon gulp-seed
===================

This is a seed to start a proyect for front end web development.

It uses the [NPM](http://www.npmjs.org) to manage dependencies and [Gulp](http://gulpjs.com) as a build/automation system.

See a demo here: http://rubendiazjorge.me/gulp-seed

Goodies included:

- [Browserify](http://browserify.org/) (with [browserify-shim](https://github.com/thlorenz/browserify-shim)).
- [Watchify](https://github.com/substack/watchify) (caching version of browserify for super fast rebuilds).
- [SASS](http://sass-lang.com/) (to autor css files, with sourcemaps support. Using libsas to improve speed significantly).
- [CoffeeScript](http://coffeescript.org/) (with source maps!).
- [jQuery](http://jquery.com/) (from npm).
- [Bootstrap](http://getbootstrap.com) (from npm).
- [Backbone](http://backbonejs.org/) (from npm).
- [Marionette](http://marionettejs.com/) (from npm).
- [Jade](http://jade-lang.com/) (to autor HTML on client and server)
- [JST](https://www.npmjs.org/package/gulp-jst) (to compile javascript templates serverside and make them available to client code)
- [BrowserSync](http://browsersync.io) (to live reload browser and as static server).
- [ImageMin](https://www.npmjs.org/package/gulp-imagemin) Image optimization.
- [Error Notification](https://www.npmjs.org/package/gulp-notify) Error Notifications in Notification Center.


### Intallation

##### Prerequesites
- You need to have node [installed](http://nodejs.org/download/).
- You need to have gulp installed. To install it globally run `npm install -g gulp`

To install/update the seed run:

```
mkdir awesome
cd awesome
git clone https://github.com/Chipairon/gulp-seed.git .
npm install
```

This runs through all dependencies listed in `package.json` and downloads them
to a `node_modules` folder in your project directory.

### Gulp usage

- Run `gulp watch` to start a static server and begin watching your files.
- The results of the build will be put on './build' folder. You can change this on the configuration file `gulp/config.js`


### Attribution
This started as a fork from https://github.com/greypants/gulp-starter to adapt it to my personal needs.

Original code and its licensing can be found here:
  https://github.com/greypants/gulp-starter
  https://github.com/greypants/gulp-starter/blob/master/LICENSE.md
