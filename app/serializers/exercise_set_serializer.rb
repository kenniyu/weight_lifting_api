class ExerciseSetSerializer < ActiveModel::Serializer
  attributes :id, :weight, :reps, :created_at, :updated_at

  # has_one :routine_session
end
