class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :status
      t.text :zombie

      t.timestamps
    end
  end
end
