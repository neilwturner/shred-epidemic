class Lineitem < ActiveRecord::Base
  attr_accessible :id, :order_id, :price, :product_id, :quantity
end
