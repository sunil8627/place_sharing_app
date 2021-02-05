class AddIsPublicToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :is_public, :boolean
  end
end
