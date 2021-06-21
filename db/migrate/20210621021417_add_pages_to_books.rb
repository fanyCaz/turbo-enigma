class AddPagesToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :pages, :string
  end
end
