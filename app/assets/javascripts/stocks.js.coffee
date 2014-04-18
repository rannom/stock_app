# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@StockPoller =
  poll: ->
    setTimeout @request, 5000
  
  request: ->
    $.get($('#stocks').data('url'), after: $('.stock').last().data('id'))
  

  addStocks: (stocks) ->
    if stocks.length > 0
      $('#stocks').append($(stocks).hide())
      $('#show_stocks').show()
    @poll()
  
  showStocks: (e) ->
    e.preventDefault()
    $('.stock').show()
    $('#show_stocks').hide()

jQuery ->
  if $('#stocks').length > 0
    StockPoller.poll()
    $('#show_stocks a').click StockPoller.showStocks


