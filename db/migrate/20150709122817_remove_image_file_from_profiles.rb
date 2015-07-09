class RemoveImageFileFromProfiles < ActiveRecord::Migration
  def self.up
    remove_attachment :profiles, :image
  end

  def self.down
    change_table :profiles do |t|
      t.attachment :image
    end
  end
end
