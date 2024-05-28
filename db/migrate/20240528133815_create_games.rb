class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.string :genre
      t.integer :price

      t.timestamps
    end
  end
end
