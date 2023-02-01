class Product < ApplicationRecord
  validates :name, :color, :description, :price, presence: true
end