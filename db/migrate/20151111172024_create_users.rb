class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.integer :event_id, null: false
      t.integer :vehicle_id
      t.string :email, null: false
      t.string :phone, null: false

      t.timestamps null: false
    end
  end
end
