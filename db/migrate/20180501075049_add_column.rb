class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :post,:string
     remove_column :posts, :posts, :string
  end
end
