class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.references :document, index: true, foreign_key: true
      t.string :documentcontent
      t.string :email
      t.references :country, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.string :address
      t.string :postalcode
      t.string :phone
      t.date :dayofbirth
      t.text :note

      t.timestamps null: false
    end
  end
end
