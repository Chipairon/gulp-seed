#require('backbone').$ = $ || jQuery
View =  require './view'
view = new View(el: '#content')
console.log 'app.js loaded!'
