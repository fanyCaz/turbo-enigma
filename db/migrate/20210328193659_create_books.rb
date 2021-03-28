class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :year
      t.string :author
      t.string :status
      t.text :review
      t.integer :degree_of_truth

      t.timestamps
    end
  end
end
