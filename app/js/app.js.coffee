window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    App.AllNotes = new App.Collections.Notes()
    App.AllNotes.fetch().done =>
      new App.Router()
      Backbone.history.start(pushState: true)

$ ->
  $.ajaxPrefilter "json", (options) ->
    options.headers ?= {}
    options.headers['Accept'] = 'application/json'
    options

  App.initialize()
