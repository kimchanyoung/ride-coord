class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :event_id
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
