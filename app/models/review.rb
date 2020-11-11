class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: :true
  RATES = [0, 1, 2, 3, 4, 5]
  validates :rating, presence: true, inclusion: { in: RATES }, numericality: true
end
