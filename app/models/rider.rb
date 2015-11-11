class Rider < ActiveRecord::Base
  belongs_to :event
  belongs_to :vehicle
end
