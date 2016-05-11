class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.integer :maxpax
      t.integer :area
      t.references :rooms_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
