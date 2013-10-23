window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    App.AllNotes = new App.Collections.Notes()
    App.AllNotes.fetch().done =>
      view = new App.Views.Notes(collection: App.AllNotes)
      view.setElement($('body'))
      view.render()
      Backbone.history.start(pushState: true)

$ ->
  $.ajaxPrefilter "json", (options) ->
    options.headers ?= {}
    options.headers['Accept'] = 'application/json'
    options

  App.initialize()
