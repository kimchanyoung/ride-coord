class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :event_id, null: false
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
