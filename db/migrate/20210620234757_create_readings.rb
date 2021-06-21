class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :currently_reading
      t.integer :grade
      t.text :review

      t.timestamps
    end
  end
end
