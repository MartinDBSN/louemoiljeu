class Game < ApplicationRecord
  validates :name, :price, :platform, :genre, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :rentals, dependent: :destroy
end
