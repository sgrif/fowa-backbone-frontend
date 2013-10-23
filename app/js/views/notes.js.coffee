class App.Views.Notes extends Backbone.View
  template: JST['app/templates/notes.us']

  render: =>
    @$el.html(@template(notes: @collection))
    @collection.forEach(@renderNote)
    this

  renderNote: (note) =>
    view = new App.Views.Note(model: note, classTag: 'li')
    @$('ul.notes').append(view.render().el)
