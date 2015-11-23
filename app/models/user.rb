class User < ActiveRecord::Base
  has_secure_password

  has_many :events, foreign_key: 'user_id'
end
