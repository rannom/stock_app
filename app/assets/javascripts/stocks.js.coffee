# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  if $("#stocks").length
    setInterval (->
      $.getScript window.location.pathname, (data, textStatus, jqxhr) ->
        console.log "Load was performed."
        return
      return
    ), 5000
  return
