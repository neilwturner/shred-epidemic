class Product < ActiveRecord::Base
  attr_accessible :description, :id, :name, :price, :quantity
end
