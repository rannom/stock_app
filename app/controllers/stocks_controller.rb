class StocksController < ApplicationController
  def index
  	@stock_items = Stock.all
  end
end
