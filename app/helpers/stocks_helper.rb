module StocksHelper
  def build_chart(stock)
    LazyHighCharts::HighChart.new('graph') do |f|
      f.series(
        :animation => false,
        :name => stock.name,
        :data => stock.calculate_productivity
        )

      f.xAxis [{:title => {:text => "Year"} }]
      f.yAxis [{:title => {:text => "Price in $"}}]
    end
  end
end
