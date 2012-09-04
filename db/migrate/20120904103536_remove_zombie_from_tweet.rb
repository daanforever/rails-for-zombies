class RemoveZombieFromTweet < ActiveRecord::Migration
  def up
    remove_column :tweets, :zombie
  end

  def down
    add_column :tweets, :zombie, :text
  end
end
