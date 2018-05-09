class AddColumnToRegistrationTransaction < ActiveRecord::Migration[5.1]
  def change
    remove_column :registration_transactions,:registration_id,:integer
    add_reference :registration_transactions, :registration, foreign_key: true
  end
end
