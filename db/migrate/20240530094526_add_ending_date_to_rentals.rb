class AddEndingDateToRentals < ActiveRecord::Migration[7.1]
  def change
    add_column :rentals, :ending_date, :datetime

  end
end
