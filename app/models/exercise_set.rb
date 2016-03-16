class ExerciseSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :routine_session
end
