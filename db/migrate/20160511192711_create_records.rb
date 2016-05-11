class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :reservation
      t.references :debt
      t.references :credit
      t.decimal :value
      t.datetime :date
      t.string :note

      t.timestamps null: false
    end
  end
end
