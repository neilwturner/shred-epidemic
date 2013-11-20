class Lineitem < ActiveRecord::Base
  attr_accessible :id, :price, :quantity, :product_id, :order_id

  belongs_to :product 
  belongs_to :order 
  
  validates :price, :quantity, :presence => true
  validates :price, :quantity, :numericality => true
  validates :price, :quantity, :numericality => {:greater_than_or_equal_to => 0}
end
