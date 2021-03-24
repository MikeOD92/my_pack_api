class AddForeignKeyToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :catagory_id, :integer
  end
end
