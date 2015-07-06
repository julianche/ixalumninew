class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :occupation
      t.string :degree
      t.integer :ixyear
      t.string :session
      t.string :university
      t.string :email
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
