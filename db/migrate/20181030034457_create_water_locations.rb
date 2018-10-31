class CreateWaterLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :water_locations do |t|

      t.timestamps
    end
  end
end
