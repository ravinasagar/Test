class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :cart, index: true
      t.string :express_token
      t.string :express_payer_id
      t.timestamps
    end
  end
end


