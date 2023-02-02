class Product < ApplicationRecord
  validates :name, :color, :description, :price, :image, presence: true
  has_one_attached :image
end