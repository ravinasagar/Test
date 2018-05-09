class AddColumnTo < ActiveRecord::Migration[5.1]
  def change
    
    remove_column :registrations,:cart_id,:integer
    add_reference :registrations, :cart, foreign_key: true
  end
end
