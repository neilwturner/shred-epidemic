class Provincestate < ActiveRecord::Base
  attr_accessible :gst, :hst, :id, :name, :pst

  has_many :customer
  
  validates :gst, :hst, :name, :pst, :presence => true
  validates :gst, :hst, :pst, :numericality => true
  validates :gst, :hst, :pst, :numericality => {:greater_than_or_equal_to => 0}
end
