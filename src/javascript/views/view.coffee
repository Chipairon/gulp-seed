_          = require 'underscore'
Backbone   = require 'backbone'
Backbone.$ = require 'jquery'
Marionette = require 'backbone.marionette'
plugin     = require 'plugin'

Item = Backbone.Model.extend({})
ItemCollection = Backbone.Collection.extend({
  model: Item
})

RowView = Marionette.ItemView.extend
  tagName: 'li',
  template: JST['row_template']

MainView = Marionette.CompositeView.extend
  childView: RowView,
  childViewContainer: 'ul',
  template: JST['main_template']
  initialize: (options) ->
    this.collection = options.collection

exports.MainView = MainView
exports.ItemCollection = ItemCollection
