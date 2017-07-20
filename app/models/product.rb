class Product < ApplicationRecord
  has_many :order_items, dependent: :destroy
  validates :name, :description, :price, :presence => true
end
