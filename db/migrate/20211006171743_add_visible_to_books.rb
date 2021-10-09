class AddVisibleToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :visible, :boolean
  end
end
