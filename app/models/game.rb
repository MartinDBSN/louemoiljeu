class Game < ApplicationRecord
  validates :name, :price, :platform, :genre, :photo, presence: true
  validates :price, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :rentals, dependent: :destroy
  has_one_attached :photo
end
