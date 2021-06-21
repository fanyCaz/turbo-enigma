class RemoveReviewFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :review, :text
  end
end
