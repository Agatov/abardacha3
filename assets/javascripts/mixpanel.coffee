$ ->

  $('.work a').on 'click', ->
    track 'overlay link clicked'


window.track = (event_name) ->
  mixpanel.track event_name