class Brand < ActiveRecord::Base
  has_and_belongs_to_many :items
  has_many :prices
  attr_accessible :brand_name
end
