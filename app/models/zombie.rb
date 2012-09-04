class Zombie < ActiveRecord::Base
  attr_accessible :name, :graveyard
  has_many :tweets
  validates_presence_of :name, :graveyard
end
