$ ->

  $('.popup-buttons .button').on 'click', ->

    if $(@).hasClass('hide-popup')
      hide_popup()
      return false

    $(@).parents('.content').hide()
    $(".#{$(@).attr('action')}").show()

  $('.popup .block .close-icon').on 'click', ->
    hide_popup()


  $('.send-popup-form').on 'click', ->
    form = $(@).parents('.popup-form')
    phone = form.find('input[name=phone]')

    if phone.val().length < 10
      shake_field phone
      return false

    $.post('/orders.json',
    {
      'order[name]': 'Быстрая заявка',
      'order[phone]': phone.val()
      'order[email]': '',
      'order[about]': $(@).attr('situation')
    },
    (data) =>

    )

    hide_current_screen()
    show_popup_screen('thank-you-screen')


window.show_popup = (start_screen_class) ->
  $('.popup-overlay').show()
  $(".#{start_screen_class}").show()
  $('.popup').show()

window.hide_popup = ->
  $('.popup').hide()
  $('.popup-overlay').hide()

window.hide_current_screen = ->
  $('.popup .block .content').hide()

window.show_popup_screen = (screen_class) ->
  $(".#{screen_class}").show()