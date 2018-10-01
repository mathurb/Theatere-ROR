class AddTheatereToAudi < ActiveRecord::Migration[5.2]
  def change
    add_reference :audis, :theater
  end
end
