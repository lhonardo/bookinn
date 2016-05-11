class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :corporatename
      t.string :juridicaldocument
      t.string :extradocument
      t.string :email
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.string :address
      t.string :postcode
      t.string :phone
      t.text :note

      t.timestamps null: false
    end
  end
end
