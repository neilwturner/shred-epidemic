class StoreController < ApplicationController
  def index
  	@products = Product.order(:name)
  end

  def show
  	@product = Product.find(params[:id])
  end

  def search
  	#no code required
  end

  def search_results
  	#searching this way guards against SQL injection
  	@products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
  end

  def sort_results
    
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 2"]
  end

end
