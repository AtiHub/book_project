class AddPageCountToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :page_count, :integer
  end
end
