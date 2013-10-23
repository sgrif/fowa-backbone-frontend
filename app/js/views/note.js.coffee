class App.Views.Note extends Backbone.View
  template: JST['app/templates/note.us']

  className: 'note'

  events:
    'blur :input': 'saveModel'
    'click .remove-note': 'destroy'

  initialize: ->
    @lastUpdated = new App.Views.LastUpdated(model: @model)
    @listenTo(@model, 'invalid error', @markInvalid)

  markInvalid: ->
    @$el.addClass('invalid')

  render: =>
    @$el.html(@template(note: @model))
    @$('footer').html(@lastUpdated.render().el)
    this

  remove: ->
    @lastUpdated.remove(arguments...)
    super(arguments...)

  saveModel: (e) ->
    @model.set
      title: @$('.title').val()
      content: @$('.content').val()
    @model.save()
    false

  destroy: ->
    @model.destroy()
    @remove()
