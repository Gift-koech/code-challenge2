class RestaurantPizza < ApplicationRecord
  belongs_to :restaurant
  belongs_to :pizza

  validates :price, presence: true
  validate :price_range
  
  
  def price_range
    if !(price < 30 && price > 0)
      errors.add(:price, "amount should range from 0 to 30")
    end
  end
end
