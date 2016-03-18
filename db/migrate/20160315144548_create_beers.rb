class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.references :brewery, index: true, foreign_key: true
      t.string :name
      t.integer :cat_id
      t.integer :style_id
      t.integer :abv
      t.integer :ibu
      t.integer :srm
      t.integer :upc
      t.string :filepath
      t.text :descript
      t.string :last_mod

      t.timestamps null: false
    end
  end
end
