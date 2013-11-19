class Lineitem < ActiveRecord::Base
  attr_accessible :id, :order_id, :price, :product_id, :quantity

  validates :id, :order_id, :price, :product_id, :quantity, :presence => true
  validates :id, :order_id, :price, :product_id, :quantity, :numericality => true
  validates :id, :order_id, :price, :product_id, :quantity, :numericality => {:greater_than_or_equal_to => 0}
  validates :id, :order_id, :product_id, uniqueness: true
end
