class RoutineSession < ActiveRecord::Base
  belongs_to :routine
  # belongs_to :user, :through => :routine

  has_many :routine_session_exercise_sets
end
