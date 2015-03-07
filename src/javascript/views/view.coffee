plugin = require 'plugin'
plugin.msg()
Item = Backbone.Model.extend({})
ItemCollection = Backbone.Collection.extend({
  model: Item
})

RowView = Marionette.ItemView.extend
  tagName: 'li'
  className: 'list-group-item'
  template: JST['row_template']

MainView = Marionette.CompositeView.extend
  childView: RowView,
  childViewContainer: 'ul'
  className: 'list-group'
  template: JST['main_template']
  initialize: (options) ->
    this.collection = options.collection

exports.MainView = MainView
exports.ItemCollection = ItemCollection
