class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
