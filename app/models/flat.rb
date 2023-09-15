class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 50 }
  validates :price_per_night, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :number_of_guests, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
