class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :posts, :content
	end
	def self.down
  add_column :posts, :content, :string
	end
end
