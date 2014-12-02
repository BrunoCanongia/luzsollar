# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#categorias_select', (evt) ->
    $.ajax '/ajax_m',
      type: 'GET'
      format: 'js'
      dataType: 'script'
      data: {
        categoria_id: $("#categorias_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic select OK!")
