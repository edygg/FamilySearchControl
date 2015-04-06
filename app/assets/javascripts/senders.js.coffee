# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
initialize = ->
  $('#sender_phone').mask('0000-0000')
  $('#sender_nim').mask('000-0000-000A')
  return

$(document).ready(initialize)
$(document).on('page:load', initialize)