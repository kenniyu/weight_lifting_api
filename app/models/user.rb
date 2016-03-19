class User < ActiveRecord::Base
  before_create -> { self.auth_token = SecureRandom.hex }
  
  has_many :routines

  has_many :routine_sessions
  has_many :routine_exercises
end
