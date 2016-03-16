class Routine < ActiveRecord::Base
  belongs_to :user

  has_many :routine_exercises
  has_many :routine_sessions
end
