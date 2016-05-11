class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
