class CreateWaypoints < ActiveRecord::Migration[5.0]
  def change
    create_table :waypoints do |t|
      t.belongs_to :vehicle
      t.float :latitude
      t.float :longitude
      t.timestamps :sent_at
      t.timestamps
    end
  end
end
