class Tweet < ActiveRecord::Base
  attr_accessible :status, :zombie

  validates :status, :zombie, :presence => true
end
