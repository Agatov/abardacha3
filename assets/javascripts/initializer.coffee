$ ->

  $('.scroll-to-form').on 'click', ->
    $('body').animate({scrollTop: $('#order-form').offset().top}, 'slow')

  $('.prototype-details').on 'click', ->
    reachGoal 'prototype-details-button-click'
    track 'Prototype details button clicked'