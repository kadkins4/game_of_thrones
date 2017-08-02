class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :title
      t.string :quote
      t.references :house, foreign_key: true
    end
  end
end
