class Catigory < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :catigories

end
