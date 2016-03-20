require 'test_helper'

class RoutineSessionExerciseSetsControllerTest < ActionController::TestCase
  setup do
    @routine_session_exercise_set = routine_session_exercise_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routine_session_exercise_sets)
  end

  test "should create routine_session_exercise_set" do
    assert_difference('RoutineSessionExerciseSet.count') do
      post :create, routine_session_exercise_set: { exercise_id: @routine_session_exercise_set.exercise_id, reps: @routine_session_exercise_set.reps, routine_session_id: @routine_session_exercise_set.routine_session_id, weight: @routine_session_exercise_set.weight }
    end

    assert_response 201
  end

  test "should show routine_session_exercise_set" do
    get :show, id: @routine_session_exercise_set
    assert_response :success
  end

  test "should update routine_session_exercise_set" do
    put :update, id: @routine_session_exercise_set, routine_session_exercise_set: { exercise_id: @routine_session_exercise_set.exercise_id, reps: @routine_session_exercise_set.reps, routine_session_id: @routine_session_exercise_set.routine_session_id, weight: @routine_session_exercise_set.weight }
    assert_response 204
  end

  test "should destroy routine_session_exercise_set" do
    assert_difference('RoutineSessionExerciseSet.count', -1) do
      delete :destroy, id: @routine_session_exercise_set
    end

    assert_response 204
  end
end
