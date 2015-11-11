class Vehicle < ActiveRecord::Base
  belongs_to :event
  has_many :riders, foreign_key: 'vehicle_id'
end
