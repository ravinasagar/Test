class DropTableLikkk < ActiveRecord::Migration[5.1]
  def change
    drop_table :users
    drop_table :posts
    drop_table :comments
  end
end
