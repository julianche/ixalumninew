class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :users, :profile_id, :references
  end
end
