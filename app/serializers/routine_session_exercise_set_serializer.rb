class RoutineSessionExerciseSetSerializer < ActiveModel::Serializer
  attributes :id, :weight, :reps
  has_one :routine_session
  has_one :exercise
end
