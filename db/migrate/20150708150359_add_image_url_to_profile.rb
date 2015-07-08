class AddImageUrlToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :image_url, :url
  end
end
