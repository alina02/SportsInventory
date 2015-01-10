class CreateBrandsItemsTable < ActiveRecord::Migration
  def change
    create_table :brands_items, id: false do |t|
      t.belongs_to :brand, index: true
      t.belongs_to :item, index: true
    end
  end
end
