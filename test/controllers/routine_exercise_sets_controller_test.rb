require 'test_helper'

class RoutineExerciseSetsControllerTest < ActionController::TestCase
  setup do
    @routine_exercise_set = routine_exercise_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routine_exercise_sets)
  end

  test "should create routine_exercise_set" do
    assert_difference('RoutineExerciseSet.count') do
      post :create, routine_exercise_set: { exercise_id: @routine_exercise_set.exercise_id, reps: @routine_exercise_set.reps, routine_id: @routine_exercise_set.routine_id, weight: @routine_exercise_set.weight }
    end

    assert_response 201
  end

  test "should show routine_exercise_set" do
    get :show, id: @routine_exercise_set
    assert_response :success
  end

  test "should update routine_exercise_set" do
    put :update, id: @routine_exercise_set, routine_exercise_set: { exercise_id: @routine_exercise_set.exercise_id, reps: @routine_exercise_set.reps, routine_id: @routine_exercise_set.routine_id, weight: @routine_exercise_set.weight }
    assert_response 204
  end

  test "should destroy routine_exercise_set" do
    assert_difference('RoutineExerciseSet.count', -1) do
      delete :destroy, id: @routine_exercise_set
    end

    assert_response 204
  end
end
