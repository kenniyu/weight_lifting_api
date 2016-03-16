class Exercise < ActiveRecord::Base
  has_many :exercise_sets
  has_many :routine_sessions
  has_many :routine_exercises
end
