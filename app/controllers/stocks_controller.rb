class StocksController < ApplicationController


	def index
		#@stocks = Stock.where('id > ?', params[:after].to_i)
		@stocks = Stock.all
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
		params.require(:stock).permit(:id, :name, :price, :quantity, :percentage, :years)
	end


end