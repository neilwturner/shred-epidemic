class StoreController < ApplicationController
  def index
  	@products = Product.all(:name)
  end

  def show
  	@product = Product.find(params[:id])
  end
end
