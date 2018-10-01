class AddAudiToShows < ActiveRecord::Migration[5.2]
  def change
    add_reference :shows, :audi
  end
end
