class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :cost
      t.integer :quantity
      t.references :items
      t.references :brands

      t.timestamps
    end
    add_index :prices, :items_id
    add_index :prices, :brands_id
  end
end
