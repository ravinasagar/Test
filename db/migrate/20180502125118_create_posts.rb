class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :post
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
