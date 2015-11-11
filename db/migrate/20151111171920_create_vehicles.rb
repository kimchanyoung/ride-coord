class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name, null: false;
      t.integer :event_id, null: false;

      t.timestamps null: false
    end
  end
end
