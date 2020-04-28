class Car < ApplicationRecord
  validates :name, :description, :price, :car_type, :image, presence: true
end
