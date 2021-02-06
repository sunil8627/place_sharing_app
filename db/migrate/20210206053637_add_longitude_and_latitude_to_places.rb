class AddLongitudeAndLatitudeToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :longitude, :float
    add_column :places, :latitude, :float
  end
end
