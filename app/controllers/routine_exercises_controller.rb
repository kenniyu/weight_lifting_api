class RoutineExercisesController < ApplicationController
  before_action :set_routine_exercise, only: [:show, :update, :destroy]

  # GET /routine_exercises
  # GET /routine_exercises.json
  def index
    @routine_exercises = RoutineExercise.all

    render json: @routine_exercises
  end

  # GET /routine_exercises/1
  # GET /routine_exercises/1.json
  def show
    render json: @routine_exercise
  end

  # POST /routine_exercises
  # POST /routine_exercises.json
  def create
    @routine_exercise = RoutineExercise.new(routine_exercise_params)

    if @routine_exercise.save
      render json: @routine_exercise, status: :created, location: @routine_exercise
    else
      render json: @routine_exercise.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routine_exercises/1
  # PATCH/PUT /routine_exercises/1.json
  def update
    @routine_exercise = RoutineExercise.find(params[:id])

    if @routine_exercise.update(routine_exercise_params)
      head :no_content
    else
      render json: @routine_exercise.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routine_exercises/1
  # DELETE /routine_exercises/1.json
  def destroy
    @routine_exercise.destroy

    head :no_content
  end

  private

    def set_routine_exercise
      @routine_exercise = RoutineExercise.find(params[:id])
    end

    def routine_exercise_params
      params.require(:routine_exercise).permit(:routine_id, :exercise_id)
    end
end
