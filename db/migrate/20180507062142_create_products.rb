class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.belongs_to :booking, index: true
      t.string :ip
      t.string :express_token
      t.string :express_payer_id
      t.timestamps
    end
  end
end
