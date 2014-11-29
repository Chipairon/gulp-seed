bootstrap = require 'bootstrap'
$('button').popover()

View =  require './views/view'
items = new View.ItemCollection([
  {
    name: "Browserify-shim",
    desc: "Makes uncompatible libraries browserifiable."
  }
  {
    name: "Browserify",
    desc: "Encapsulates functionality. Avoids pollution."
  }
  {
    name: "Watchify",
    desc: "Recompile only needed assets as they change."
  }
  {
    name: "BrowserSync",
    desc: "Starts server and syncs sessions"
  }
  {
    name: "CoffeeScript",
    desc: "Javascript can be written in coffee, supports sourcemaps."
  }
  {
    name: "CoffeeLint",
    desc: "Lints your coofeescripts automatically"
  }
  {
    name: "SAAS",
    desc: "CSS can be written in SASS."
  }
  {
    name: "Jade",
    desc: "Html templates can be written in Jade (for server and client)"
  }
  {
    name: "JST",
    desc: "Makes templates compiled on the server ready to use client-side."
  }
  {
    name: "Imagify",
    desc: "Optimizes images automatically"
  }
  {
    name: "Non common-js ready",
    desc: "Makes non common-js modules compatible"
  }
  {
    name: "Backbone",
    desc: "Includes Backbone as an npm module"
  }
  {
    name: "Underscore",
    desc: "Includes Underscore as an npm module"
  }
  {
    name: "Marionette",
    desc: "Includes Marionette to develop js apps"
  }
  {
    name: "jQuery",
    desc: "Comes with jQuery included as an npm module"
  }
  {
    name: "Bootstrap",
    desc: "Bootstrap as SASS source to spice things up"
  }
])

mainView = new View.MainView({collection: items})
mainView.render()
$('#content').html(mainView.el)
console.log 'app.js loaded!'

