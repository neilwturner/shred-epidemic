class Product < ActiveRecord::Base
  attr_accessible :description, :id, :name, :price, :quantity, :image_filename, :category_id

  has_many :lineitem
  has_many :order, :through => :lineitem
 # belongs_to :catigory

  validates :description, :name, :price, :quantity, :presence => true
  validates :price, :quantity, :numericality => true
  validates :price, :numericality => {greater_than: 0.01}

end
