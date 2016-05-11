class CreateRatesCategories < ActiveRecord::Migration
  def change
    create_table :rates_categories do |t|
      t.decimal :onepax
      t.decimal :twopax
      t.decimal :extra
      t.decimal :onepaxsp
      t.decimal :twopaxsp
      t.decimal :extrasp
      t.references :rooms_category, index: true, foreign_key: true
      t.references :rate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
