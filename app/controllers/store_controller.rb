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

     @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
   
  end

  def sort_results
  #Search by Guitar  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 2"]
  end

  def sort_results_acc 
  #Search by Accessories 
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 4"]
  end

  def sort_results_amp 
  #Search by Amp 
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 1"]
  end

  def sort_results_bass
  #Search by Bass  
   @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 3"]
  end

def search_by_catigory

end

def search_results_by_catigory

    # @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
        if params[:keywords] == "Accessories"
       @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 4"]
     elsif params[:keywords] == "Guitars"
      @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 2"]
    elsif  params[:keywords] == "Bass"
     @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 3"]
    elsif  params[:keywords] == "Amps"
      @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 1"]
    else
      @products = Product.find_by_sql ["SELECT * FROM products WHERE catigory_id = 0"]
    end
   
  end

def cart
  @product = Product.find(params[:id])
  @cart = get_cart 
  @cart.add_to_cart(@product)
end

 def get_cart 
  if session[:cart] 
    return session[:cart] 
  else session[:cart] = Cart.new 
    return session[:cart] 
  end 
end

def about_us
   @about_us = About.find(:all)
  end

  def contact_us
   @contact_us = Contact.find(:all)
end
end
