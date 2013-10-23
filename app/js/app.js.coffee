window.App =
  Views: {}
  Models: {}
  Collections: {}

  initialize: ->
    new App.Router()
    Backbone.history.start(pushState: true)

$ ->
  $.ajaxPrefilter "json", (options) ->
    options.headers ?= {}
    options.headers['Accept'] = 'application/json'

  App.initialize()
