class AddAudiToMovies < ActiveRecord::Migration[5.2]
  def change
    add_reference :movies, :audi
  end
end
