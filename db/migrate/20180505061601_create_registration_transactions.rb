class CreateRegistrationTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :registration_transactions do |t|
      t.integer :registration_id
      t.string :action
      t.integer :amount
      t.boolean :success
      t.string :authorization
      t.string :message
      t.text :params

      t.timestamps
    end
  end
end
