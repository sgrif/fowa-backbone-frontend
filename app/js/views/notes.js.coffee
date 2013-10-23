class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']

  events:
    'click .add-note': 'addNote'

  initialize: ->
    @listenTo(@collection, 'add', @renderNote)

  render: =>
    @$el.html(@template(notes: @collection))
    @collection.forEach(@renderNote)
    this

  renderNote: (note) =>
    view = new App.Views.Note(model: note, tagName: 'li')
    @$('ul.notes').append(view.render().el)

  addNote: (e) ->
    @collection.add({})
