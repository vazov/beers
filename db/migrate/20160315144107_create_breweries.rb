class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :code
      t.string :country
      t.string :phone
      t.string :website
      t.string :filepath
      t.text :descript
      t.string :last_mod

      t.timestamps null: false
    end
  end
end
