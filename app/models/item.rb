class Item < ActiveRecord::Base
  has_and_belongs_to_many :brands
  has_many :prices
  attr_accessible  :category, :item_name
end
