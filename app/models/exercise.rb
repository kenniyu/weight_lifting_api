class Exercise < ActiveRecord::Base
  has_many :routine_exercise_sets
  has_many :routine_session_exercise_sets
  has_many :routine_sessions
  has_many :routine_exercises

end
