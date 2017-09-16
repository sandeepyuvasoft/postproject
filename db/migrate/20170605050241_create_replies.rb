class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.string :reply
      t.integer :post_id
      t.integer :comment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
