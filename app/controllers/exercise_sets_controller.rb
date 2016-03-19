class ExerciseSetsController < ApplicationController
  before_action :set_exercise_set, only: [:show, :update, :destroy]
  before_filter :authenticate_user_from_token, only: [:index, :show, :create, :update, :destroy]

  # GET /exercise_sets
  # GET /exercise_sets.json
  def index
    @user = User.find_by id: params[:user_id]
    @routine_session = RoutineSession.find(params[:routine_session_id])
    if @user && @routine_session
      @exercise_sets = @routine_session.exercise_sets
    else
      @exercise_sets = []
    end

    render json: @exercise_sets
  end

  # GET /exercise_sets/1
  # GET /exercise_sets/1.json
  def show
    render json: @exercise_set
  end

  # POST /exercise_sets
  # POST /exercise_sets.json
  def create
    @exercise_set = ExerciseSet.new(exercise_set_params)

    if @exercise_set.save
      render json: @exercise_set, status: :created, location: @exercise_set
    else
      render json: @exercise_set.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exercise_sets/1
  # PATCH/PUT /exercise_sets/1.json
  def update
    @exercise_set = ExerciseSet.find(params[:id])

    if @exercise_set.update(exercise_set_params)
      head :no_content
    else
      render json: @exercise_set.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exercise_sets/1
  # DELETE /exercise_sets/1.json
  def destroy
    @exercise_set.destroy

    head :no_content
  end

  private

    def set_exercise_set
      @exercise_set = ExerciseSet.find(params[:id])
    end

    def exercise_set_params
      params.require(:exercise_set).permit(:exercise_id, :routine_session_id, :weight, :reps)
    end
end
