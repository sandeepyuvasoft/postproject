class AddPicToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :pic, :string
  end
end
