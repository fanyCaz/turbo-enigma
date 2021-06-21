class Reading < ApplicationRecord
  validates :review, presence: true
  validates :currently_reading, presence: true
end
