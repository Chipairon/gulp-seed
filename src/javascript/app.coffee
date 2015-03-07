$('button').popover()

View =  require './views/view'
items = new View.ItemCollection([
  {
    name: "Browserify-shim",
    desc: "Makes uncompatible libraries browserifiable."
  }
])

mainView = new View.MainView({collection: items})
mainView.render()
$('#content').html(mainView.el)
console.log 'app.js loaded!'

