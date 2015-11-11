class Event < ActiveRecord::Base
  has_many :vehicles, foreign_key: 'event_id'
  has_many :users, foreign_key: 'event_id'
end
