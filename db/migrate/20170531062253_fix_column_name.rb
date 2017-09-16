class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
    rename_column :posts, :title, :post
  end
end
