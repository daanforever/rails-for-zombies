class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.text :name
      t.text :graveyard

      t.timestamps
    end
  end
end
