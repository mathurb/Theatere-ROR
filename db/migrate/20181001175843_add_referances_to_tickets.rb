class AddReferancesToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :audi
    add_reference :tickets, :movie
    add_reference :tickets, :booking
  end
end
