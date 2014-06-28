$ ->

  works_viewed = 0

  $('.work a').on 'click', ->
    work_name = $(@).parent('.work').find('h3').text()
    works_viewed += 1

    if works_viewed >= 3
      track "#{works_viewed} works viewed"


    track 'Work viewed', {work_name: work_name}
    return false


window.track = (event_name, options = {}) ->
  mixpanel.track event_name, options