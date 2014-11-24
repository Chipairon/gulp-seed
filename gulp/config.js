var dest = "./build";
var src = './src';

module.exports = {
  browserSync: {
    server: {
      // We're serving the src folder as well
      // for sass sourcemap linking
      baseDir: [dest, src, dest + '/htdocs']
    },
    files: [
      dest + "/**",
      // Exclude Map files
      "!" + dest + "/**.map"
    ]
  },
  sass: {
    src: src + "/sass/*.{sass,scss}",
    dest: dest
  },
  jadeViews: {
    src: ['./src/**/*.jade', '!./src/javascript/templates/*'],
    dest: dest
  },
  jadeJst: {
    src: './src/javascript/templates/**/*.jade',
    dest: dest + '/js'
  },
  images: {
    src: src + "/images/**",
    dest: dest + "/images"
  },
  markup: {
    src: src + "/htdocs/**/*.html",
    dest: dest
  },
  browserify: {
    // Enable source maps
    debug: true,
    // Additional file extentions to make optional
    extensions: ['.coffee'],
    // A separate bundle will be generated for each
    // bundle config in the list below
    bundleConfigs: [{
      entries: src + '/javascript/app.coffee',
      dest: dest,
      outputName: 'app.js'
    }, {
      entries: src + '/javascript/head.coffee',
      dest: dest,
      outputName: 'head.js'
    }]
  }
};
