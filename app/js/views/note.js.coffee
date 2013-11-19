class App.Views.Note extends Marionette.Layout
  template: JST['app/templates/note.us']

  className: 'note'

  tagName: 'li'

  bindings:
    '.title': 'title'
    '.content': 'content'

  events:
    'blur :input': 'saveModel'
    'click .remove-note': 'destroy'

  modelEvents:
    'invalid error': 'markInvalid'

  regions:
    'invalidRegion': 'footer'

  initialize: ->
    @lastUpdated = new App.Views.LastUpdated(model: @model)

  markInvalid: ->
    @$el.addClass('invalid')

  onRender: =>
    @stickit()
    @invalidRegion.show(@lastUpdated)

  saveModel: (e) ->
    @model.save()
    false

  destroy: ->
    @model.destroy()
