class Event < ActiveRecord::Base
  has_many :vehicles, foreign_key: 'event_id'
  has_many :riders, foreign_key: 'event_id'

  def rideless_riders
    riders.where(vehicle_id: nil)
  end
end
