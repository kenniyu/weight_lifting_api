class RoutineExerciseSetsController < ApplicationController
  before_action :set_routine_exercise_set, only: [:show, :update, :destroy]
  # before_filter :authenticate_user_from_token, only: [:index, :show, :create, :update, :destroy]
  before_filter :set_current_user


  # GET /routine_exercise_sets
  # GET /routine_exercise_sets.json
  def index
    @user = User.find_by(id: params[:user_id])
    @routine_exercises = RoutineExercise.find(params[:routine_id])
    if @user
      if @user.id == @current_user.id
        @routine_exercise_sets = @user.routines
      else
        @routine_exercise_sets = []
      end
    else
      @routine_exercise_sets = RoutineExerciseSet.all
    end

    render json: @routine_exercise_sets
  end

  # GET /routine_exercise_sets/1
  # GET /routine_exercise_sets/1.json
  def show
    render json: @routine_exercise_set
  end

  # POST /routine_exercise_sets
  # POST /routine_exercise_sets.json
  def create
    @routine_exercise_set = RoutineExerciseSet.new(routine_exercise_set_params)

    if @routine_exercise_set.save
      render json: @routine_exercise_set, status: :created, location: @routine_exercise_set
    else
      render json: @routine_exercise_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routine_exercise_sets/1
  # PATCH/PUT /routine_exercise_sets/1.json
  def update
    @routine_exercise_set = RoutineExerciseSet.find(params[:id])

    if @routine_exercise_set.update(routine_exercise_set_params)
      head :no_content
    else
      render json: @routine_exercise_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routine_exercise_sets/1
  # DELETE /routine_exercise_sets/1.json
  def destroy
    @routine_exercise_set.destroy

    head :no_content
  end

  private

    def set_routine_exercise_set
      @routine_exercise_set = RoutineExerciseSet.find(params[:id])
    end

    def routine_exercise_set_params
      params.require(:routine_exercise_set).permit(:routine_id, :exercise_id, :weight, :reps)
    end
end
