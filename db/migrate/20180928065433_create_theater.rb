class CreateTheater < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :address
      t.integer :number

      t.timestamps
    end
end
end
