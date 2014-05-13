<<<<<<< HEAD
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
=======
updateCountdown = ->
  remaining = 140 - jQuery("#micropost_content").val().length
  jQuery(".countdown").text remaining + " characters remaining"

jQuery ->
  updateCountdown()
  $("#micropost_content").change updateCountdown
  $("#micropost_content").keyup updateCountdown
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
