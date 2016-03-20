class RoutineSessionExerciseSetsController < ApplicationController
  before_action :set_routine_session_exercise_set, only: [:show, :update, :destroy]

  # GET /routine_session_exercise_sets
  # GET /routine_session_exercise_sets.json
  def index
    @routine_session_exercise_sets = RoutineSessionExerciseSet.all

    render json: @routine_session_exercise_sets
  end

  # GET /routine_session_exercise_sets/1
  # GET /routine_session_exercise_sets/1.json
  def show
    render json: @routine_session_exercise_set
  end

  # POST /routine_session_exercise_sets
  # POST /routine_session_exercise_sets.json
  def create
    @routine_session_exercise_set = RoutineSessionExerciseSet.new(routine_session_exercise_set_params)

    if @routine_session_exercise_set.save
      render json: @routine_session_exercise_set, status: :created, location: @routine_session_exercise_set
    else
      render json: @routine_session_exercise_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routine_session_exercise_sets/1
  # PATCH/PUT /routine_session_exercise_sets/1.json
  def update
    @routine_session_exercise_set = RoutineSessionExerciseSet.find(params[:id])

    if @routine_session_exercise_set.update(routine_session_exercise_set_params)
      head :no_content
    else
      render json: @routine_session_exercise_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routine_session_exercise_sets/1
  # DELETE /routine_session_exercise_sets/1.json
  def destroy
    @routine_session_exercise_set.destroy

    head :no_content
  end

  private

    def set_routine_session_exercise_set
      @routine_session_exercise_set = RoutineSessionExerciseSet.find(params[:id])
    end

    def routine_session_exercise_set_params
      params.require(:routine_session_exercise_set).permit(:routine_session_id, :exercise_id, :weight, :reps)
    end
end
