class User < ActiveRecord::Base
  belongs_to :event
  belongs_to :vehicle
end
