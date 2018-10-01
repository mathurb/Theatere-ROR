class RemoveReferenceToBookings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :audi
  end
end
