class Cart 
	attr_reader :items 
	def initialize 
		@items = [] 

	end 

	def add_to_cart(product) 
		@items << product 
	end 
end