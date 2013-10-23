class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']

  className: 'note'

  render: =>
    @$el.html(@template(note: @model))
    this
