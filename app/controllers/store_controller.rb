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

   # if params[:keywords] == "Accessories" 
      
   # else
      @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
    #end 
  end

  def sort_results
  #Search by Guitar  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 2"]
  end

  def sort_results_acc  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 4"]
  end

  def sort_results_amp  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 1"]
  end

  def sort_results_bass  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 3"]
  end
end
