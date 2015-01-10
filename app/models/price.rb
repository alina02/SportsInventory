class Price < ActiveRecord::Base
  belongs_to :brand
  belongs_to :item
  attr_accessible :cost, :quantity
end
