class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status

  validates :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status, :presence => true
  validates :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :numericality => true
  validates :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :numericality => { :greater_than_or_equal_to => 0 }
  validates :status, :inclusion => { :in => %w(new processing shipped) }
  validates :customer_id, :id, uniqueness: true

end
