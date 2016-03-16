require 'test_helper'

class RoutineExercisesControllerTest < ActionController::TestCase
  setup do
    @routine_exercise = routine_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routine_exercises)
  end

  test "should create routine_exercise" do
    assert_difference('RoutineExercise.count') do
      post :create, routine_exercise: { exercise_id: @routine_exercise.exercise_id, routine_id: @routine_exercise.routine_id }
    end

    assert_response 201
  end

  test "should show routine_exercise" do
    get :show, id: @routine_exercise
    assert_response :success
  end

  test "should update routine_exercise" do
    put :update, id: @routine_exercise, routine_exercise: { exercise_id: @routine_exercise.exercise_id, routine_id: @routine_exercise.routine_id }
    assert_response 204
  end

  test "should destroy routine_exercise" do
    assert_difference('RoutineExercise.count', -1) do
      delete :destroy, id: @routine_exercise
    end

    assert_response 204
  end
end
