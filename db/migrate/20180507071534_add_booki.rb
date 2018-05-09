class AddBooki < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :purchased_at,:string
  end
end
