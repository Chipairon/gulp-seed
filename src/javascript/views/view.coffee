_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require 'backbone.marionette'
plugin     = require 'plugin'
module.exports = Backbone.View.extend

  #template: tte
  template: JST['template']

  initialize: ->
    underscoreTest = _.last([0,1,2, 'hi mom!'])
    @render()

  render: ->
    @$el.html @template
      description: 'Starter Gulp + Browserify project equipped to handle the following:'
      tools: [
        'Browserify-shim'
        'Browserify / Watchify'
        'BrowserSync'
        'CoffeeScript'
        'SASS'
        'Jade templates for server and client'
        'JST templates available on client code'
        'Image optimization'
        'LiveReload'
        'Non common-js jquery plugin'
        'Npm backbone'
        'Npm backbone.marionette'
        'Npm jquery'
        'Underscore'
      ]

    plugin()
