class CreateUploaders < ActiveRecord::Migration[5.1]
  def change
    create_table :uploaders do |t|
       t.attachment :avatar
      t.timestamps
    end
  end
end
