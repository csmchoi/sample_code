class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :postal_code_name
      t.string :postal_code_suffix
      t.string :phone_number
      t.string :country
      t.float :latitude
      t.float :longitude
      t.float :radius

      t.timestamps
    end

    add_index :locations, :latitude
    add_index :locations, :longitude
  end
end
