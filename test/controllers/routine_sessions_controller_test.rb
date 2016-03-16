require 'test_helper'

class RoutineSessionsControllerTest < ActionController::TestCase
  setup do
    @routine_session = routine_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routine_sessions)
  end

  test "should create routine_session" do
    assert_difference('RoutineSession.count') do
      post :create, routine_session: { completed: @routine_session.completed, routine_id: @routine_session.routine_id }
    end

    assert_response 201
  end

  test "should show routine_session" do
    get :show, id: @routine_session
    assert_response :success
  end

  test "should update routine_session" do
    put :update, id: @routine_session, routine_session: { completed: @routine_session.completed, routine_id: @routine_session.routine_id }
    assert_response 204
  end

  test "should destroy routine_session" do
    assert_difference('RoutineSession.count', -1) do
      delete :destroy, id: @routine_session
    end

    assert_response 204
  end
end
