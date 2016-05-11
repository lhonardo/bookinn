class CreateRoomsCategories < ActiveRecord::Migration
  def change
    create_table :rooms_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
