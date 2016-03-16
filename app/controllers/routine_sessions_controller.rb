class RoutineSessionsController < ApplicationController
  before_action :set_routine_session, only: [:show, :update, :destroy]

  # GET /routine_sessions
  # GET /routine_sessions.json
  def index
    @routine_sessions = RoutineSession.all

    render json: @routine_sessions
  end

  # GET /routine_sessions/1
  # GET /routine_sessions/1.json
  def show
    render json: @routine_session
  end

  # POST /routine_sessions
  # POST /routine_sessions.json
  def create
    @routine_session = RoutineSession.new(routine_session_params)

    if @routine_session.save
      render json: @routine_session, status: :created, location: @routine_session
    else
      render json: @routine_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routine_sessions/1
  # PATCH/PUT /routine_sessions/1.json
  def update
    @routine_session = RoutineSession.find(params[:id])

    if @routine_session.update(routine_session_params)
      head :no_content
    else
      render json: @routine_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routine_sessions/1
  # DELETE /routine_sessions/1.json
  def destroy
    @routine_session.destroy

    head :no_content
  end

  private

    def set_routine_session
      @routine_session = RoutineSession.find(params[:id])
    end

    def routine_session_params
      params.require(:routine_session).permit(:routine_id, :completed)
    end
end
