class StocksController < ApplicationController

	def index
		@stock_items = Stock.all
	end

	def new
		@stock = Stock.new
	end

	def create
		@stock = Stock.new(stock_params)  
		if @stock.save
			redirect_to result_path
		else
			flash.now[:danger] = @stock.errors.full_messages.join("<br>").html_safe
			render 'new'
		end
	end

	def result
		@stock_item = Stock.find_by_id(result_page_id)
		@stock_values = calculate_productivity
		@h = build_chart

	end

	private

	def stock_params
		params.require(:stock).permit(:name, :price, :quantity, :percentage, :years)
	end

	def result_page_id
		a = 16
		return a 
	end

	def calculate_productivity
		y = @stock_item.years
		p = @stock_item.percentage * 0.01
		sum = (@stock_item.price * @stock_item.quantity)
		productivitySums = Array.new()
		productivitySums.push ('%.2f' % sum)
		
		i = 0

		while i < y  do
			sum += (sum * p)
			productivitySums.push ('%.2f' % sum)

			i +=1
		end
		return productivitySums.collect{|i| i.to_f}
	end

	def build_chart

	LazyHighCharts::HighChart.new('graph') do |f|
      f.series(:name=>@stock_item.name, :data=>@stock_values, :animation => false)

            f.xAxis [
    {:title => {:text => "Year"} },

	]
      f.yAxis [
    {:title => {:text => "Price in $"}},
   
	]

  end
	end
end

