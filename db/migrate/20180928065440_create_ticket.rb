class CreateTicket < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :number

      t.timestamps
    end
end
end
