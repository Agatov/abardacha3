$ ->

  works_viewed = 0

  $('.work a').on 'click', ->
    work_name = $(@).parent('.work').find('h3').text()
#    console.log "\"#{work_name}\""
    track 'Work viewed', {work_name: work_name}


window.track = (event_name, options = {}) ->
  mixpanel.track event_name, options