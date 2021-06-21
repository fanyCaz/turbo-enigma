class RemoveStatusFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :status, :string
  end
end
