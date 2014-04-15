class StocksController < ApplicationController

	def index
		@stocks = Stock.all
	    #@stocks = Stock.where("stock_id = ? and created_at > ?", params[:stock_id], Time.at(params[:after].to_i + 1))
	end

	def new
		@stock = Stock.new
	end

  def show
	  @stock = Stock.find(params[:id])
  end

	def create
		@stock = Stock.new(stock_params)  
		if @stock.save
		  redirect_to stock_path(@stock)
		else
			flash.now[:danger] = @stock.errors.full_messages.join("<br>").html_safe
			render 'new'
		end
	end

	private

	def stock_params
		params.require(:stock).permit(:name, :price, :quantity, :percentage, :years)
	end

end