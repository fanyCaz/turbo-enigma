class RemoveDegreeOfTruthFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :degree_of_truth, :integer
  end
end
