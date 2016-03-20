class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercises

  def exercises
    exercises_with_sets = []

    object.exercises.each do |exercise|
      exercise_set = {}
      exercise_set["id"] = exercise.id
      exercise_set["name"] = exercise.name
      exercise_set["sets"] = exercise.routine_exercise_sets.where(routine_id: id)
      exercises_with_sets << exercise_set
    end
    exercises_with_sets
  end
end
