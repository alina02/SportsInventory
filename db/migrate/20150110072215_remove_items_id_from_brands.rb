class RemoveItemsIdFromBrands < ActiveRecord::Migration
  def up
    remove_column :brands, :items_id
  end

  def down
    add_column :brands, :items_id, :integer
  end
end
