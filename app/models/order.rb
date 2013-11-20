class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status

  has_many :lineitem
  has_many :product, :through => :lineitem
  belongs_to :customer 

  validates :gst_rate, :hst_rate, :pst_rate, :status, :presence => true
  validates :gst_rate, :hst_rate, :pst_rate, :numericality => true
  validates :gst_rate, :hst_rate, :pst_rate, :numericality => { :greater_than_or_equal_to => 0 }
  validates :status, :inclusion => { :in => %w(new processing shipped) }

end
