class CreateWaterLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :water_locations do |t|
      t.string :geolocation
      t.string :pluscode
      t.string :city
      t.string :country
      t.string :details
      t.boolean :active 
      t.string :hours

      t.timestamps
    end
  end
end
