class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :place

      t.timestamps
    end
  end
end
