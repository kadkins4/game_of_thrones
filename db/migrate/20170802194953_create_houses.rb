class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :sigil
      t.string :motto
      t.string :location
      t.string :banner_img
    end
  end
end
