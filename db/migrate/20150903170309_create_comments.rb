class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
        t.string :user_comments
        t.integer :user_id
        t.integer :post_id

        t.timestamps null:false
    end
  end
end
