class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, :category, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: '%{value} is not a valid cuisine' }
end
