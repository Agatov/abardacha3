$ ->


  $('.show-modal').on 'click', ->
    console.log '123'
    $('.popup-overlay').show()
    $("#{$(@).attr('rel')}").show()

  $('.scroll-to-form').on 'click', ->
    $('body').animate({scrollTop: $('#order-form').offset().top}, 'slow')

  $('.prototype-details').on 'click', ->
    reachGoal 'prototype-details-button-click'
    track 'Prototype details button clicked'