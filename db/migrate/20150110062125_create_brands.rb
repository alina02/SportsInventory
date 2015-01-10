class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.references :items

      t.timestamps
    end
    add_index :brands, :items_id
  end
end
