class CreateRatesSchedules < ActiveRecord::Migration
  def change
    create_table :rates_schedules do |t|
      t.date :from
      t.date :to
      t.references :rate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
