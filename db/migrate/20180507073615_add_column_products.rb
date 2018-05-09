class AddColumnProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :first_name,:string
    add_column :products, :last_name,:string

  end
end
