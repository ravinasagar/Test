class AddColumnToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :card_expires_on,:string
    add_column :orders, :card_type,:string
    add_column :orders,   :card_number,:string
  end
end
