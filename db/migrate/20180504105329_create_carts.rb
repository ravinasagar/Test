class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :total_amount_cents
      t.string :purchased_at
      t.timestamps
    end
  end
end
