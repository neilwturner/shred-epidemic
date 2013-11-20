class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :first_name, :id, :last_name, :points, :postal_zip, :province_state_id

  #belongs_to :provincestate 
  has_many :order
  
  validates :address, :city, :country, :email, :first_name, :last_name, :points, :postal_zip, :presence => true
  validates :points, :numericality => true
  validates :points, :numericality => { :greater_than_or_equal_to => 0}
  validates :email, uniqueness: true


end
