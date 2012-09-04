class AddZombieToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :zombie_id, :integer
  end
end
