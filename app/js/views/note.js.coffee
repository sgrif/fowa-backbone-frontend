class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']

  className: 'note'

  events:
    'change :input': 'saveModel'

  render: =>
    @$el.html(@template(note: @model))
    this

  saveModel: (e) ->
    @model.save
      title: @$('.title').val()
      content: @$('.content').val()
    false
