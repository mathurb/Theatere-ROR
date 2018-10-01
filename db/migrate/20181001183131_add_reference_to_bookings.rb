class AddReferenceToBookings < ActiveRecord::Migration[5.2]
  def self.up
    add_reference :bookings, :show
    add_reference :bookings, :theater
  end
  def self.down
    remove_column :bookings, audi_id
  end
end
