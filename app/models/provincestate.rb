class Provincestate < ActiveRecord::Base
  attr_accessible :gst, :hst, :id, :name, :pst

  validates :gst, :hst, :id, :name, :pst, :presence => true
  validates :gst, :hst, :id, :pst, :numericality => true
  validates :gst, :hst, :id, :pst, :numericality => {:greater_than_or_equal_to => 0}
  validates :id, uniqueness: true
end
