require 'test_helper'

class ExerciseSetsControllerTest < ActionController::TestCase
  setup do
    @exercise_set = exercise_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_sets)
  end

  test "should create exercise_set" do
    assert_difference('ExerciseSet.count') do
      post :create, exercise_set: { exercise_id: @exercise_set.exercise_id, reps: @exercise_set.reps, routine_session_id: @exercise_set.routine_session_id, weight: @exercise_set.weight }
    end

    assert_response 201
  end

  test "should show exercise_set" do
    get :show, id: @exercise_set
    assert_response :success
  end

  test "should update exercise_set" do
    put :update, id: @exercise_set, exercise_set: { exercise_id: @exercise_set.exercise_id, reps: @exercise_set.reps, routine_session_id: @exercise_set.routine_session_id, weight: @exercise_set.weight }
    assert_response 204
  end

  test "should destroy exercise_set" do
    assert_difference('ExerciseSet.count', -1) do
      delete :destroy, id: @exercise_set
    end

    assert_response 204
  end
end
