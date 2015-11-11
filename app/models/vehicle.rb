class Vehicle < ActiveRecord::Base
  belongs_to :event
  has_many :users, foreign_key: 'vehicle_id'
end
