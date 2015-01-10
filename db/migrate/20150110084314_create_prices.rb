class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :cost
      t.integer :quantity
      t.references :brand
      t.references :item

      t.timestamps
    end
    add_index :prices, :brand_id
    add_index :prices, :item_id
  end
end
