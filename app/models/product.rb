class Product < ActiveRecord::Base
  attr_accessible :description, :id, :name, :price, :quantity

  validates :description, :id, :name, :price, :quantity, :presence => true
  validates :price, :id, :quantity, :numericality => true
  validates :id, :numericality => {:greater_than_or_equal_to => 0}
  validates :price, :numericality => {greater_than: 0.01}
  validates :id, uniqueness: true

end
