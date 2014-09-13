# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

  $.get "/usuarios.json", (usuarios) ->
    $(usuarios).each (index, usuario) ->
      $("#listaUsuarios > tbody").append "<tr><td>" + usuario.id + "</td><td>" + usuario.nombre + "</td><td>" + usuario.apellido + "</td></tr>"
      return
    return


  $("#submit").click ->
    nuevoUsuario = usuario:
      nombre: $("#nombre").val()
      apellido: $("#apellido").val()

    $.post "/usuarios.json", nuevoUsuario, (data) ->
      $(data).each (index, usuario) ->
        $("#listaUsuarios > tbody").append "<tr><td>" + usuario.id + "</td><td>" + usuario.nombre + "</td><td>" + usuario.apellido + "</td></tr>"
      $("#nombre").val("")
      $("#apellido").val("")
      return
    return
  return
        
      
