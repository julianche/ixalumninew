class AddForumToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :forum, index: true, foreign_key: true
  end
end
