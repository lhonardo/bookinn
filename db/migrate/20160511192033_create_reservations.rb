class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :company, index: true, foreign_key: true
      t.references :person, index: true, foreign_key: true
      t.datetime :in
      t.datetime :out
      t.datetime :inreal
      t.datetime :outreal
      t.text :note
      t.decimal :customvalue

      t.timestamps null: false
    end
  end
end
