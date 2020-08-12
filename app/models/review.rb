class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, numericality: { less_than: 6 }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :content, presence: true
end
