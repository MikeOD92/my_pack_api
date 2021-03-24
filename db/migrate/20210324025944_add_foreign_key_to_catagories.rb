class AddForeignKeyToCatagories < ActiveRecord::Migration[6.1]
  def change
    add_column :catagories, :pack_id, :integer
  end
end
