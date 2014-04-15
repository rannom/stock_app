class Stock < ActiveRecord::Base
	

	before_save { self.name = name.capitalize }
	before_save { self.price = price.round(2) }
	before_save { self.percentage = percentage.round(2) }


	validates :name, presence: true, length: { maximum: 30 }, presence: true,
	 uniqueness: { case_sensitive: false }
	validates_numericality_of :price, presence: true,
	 :greater_than_or_equal_to => 0
	validates_numericality_of :quantity, presence: true, :only_integer => true,
	:greater_than_or_equal_to => 0
	validates_numericality_of :percentage, presence: true,
	 :greater_than_or_equal_to => 0
	validates_numericality_of :years, :only_integer => true, presence: true,
	:greater_than_or_equal_to => 0

	def calculate_productivity
		y = years
		p = percentage * 0.01
		sum = (price * quantity)
		productivitySums = Array.new()
		productivitySums.push (sum)
		
		i = 0

		while i < y  do
			sum += (sum * p)
			productivitySums.push (sum)

			i +=1
		end
		return productivitySums.collect{|i| i.to_f}
	end
end
