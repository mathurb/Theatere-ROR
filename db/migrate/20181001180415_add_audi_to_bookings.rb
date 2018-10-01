class AddAudiToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :audi
  end
end
