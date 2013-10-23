class App.Views.LastUpdated extends Backbone.View
  tagName: 'time'

  initialize: ->
    @listenTo(@model, 'change:updated_at', @render)

  render: ->
    @$el.html(@model.get('updated_at'))
    this
