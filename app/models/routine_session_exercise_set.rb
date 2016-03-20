class RoutineSessionExerciseSet < ActiveRecord::Base
  belongs_to :routine_session
  belongs_to :exercise
end
