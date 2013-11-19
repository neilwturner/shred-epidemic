class Customer < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :first_name, :id, :last_name, :points, :postal_zip, :province_state_id

  validates :address, :city, :country, :email, :first_name, :id, :last_name, :points, :postal_zip, :province_state_id, :presence => true
  validates :points, :province_state_id, :numericality => true
  validates :points, :province_state_id, :numericality => { :greater_than_or_equal_to => 0}
  validates :email, :id, :province_state_id, uniqueness: true


end
