class Tweet < ActiveRecord::Base
  belongs_to :zombie
  attr_accessible :status, :zombie
  validates_presence_of :status, :zombie
  validates_associated :zombie
end
