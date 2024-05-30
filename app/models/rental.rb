class Rental < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :starting_date, :ending_date, presence: true
  validates :ending_date, comparison: { greater_than: :starting_date }
end
