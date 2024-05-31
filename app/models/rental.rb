class Rental < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :starting_date, :ending_date, presence: true
  validates :ending_date, comparison: { greater_than: :starting_date }
  validate :dates_cannot_overlap

  def period
    starting_date..ending_date
  end

  private

  def dates_cannot_overlap
    @rentals = Rental.all.where(user: user)
    is_overlapping = @rentals.any? do |rental|
      if (rental.starting_date > starting_date) && (rental.ending_date > ending_date)
        return false
      elsif (rental.starting_date < starting_date) && (rental.ending_date < ending_date)
       return false
      else
        return true
      end

      # period.overlaps?(rental.period)
    end
    errors.add(:overlaps_with_other) if is_overlapping
  end

end
