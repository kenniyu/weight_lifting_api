class RoutinesController < ApplicationController
  before_action :set_routine, only: [:show, :update, :destroy]

  # GET /routines
  # GET /routines.json
  def index
    @routines = Routine.all

    render json: @routines
  end

  # GET /routines/1
  # GET /routines/1.json
  def show
    render json: @routine
  end

  # POST /routines
  # POST /routines.json
  def create
    @routine = Routine.new(routine_params)

    if @routine.save
      render json: @routine, status: :created, location: @routine
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /routines/1
  # PATCH/PUT /routines/1.json
  def update
    @routine = Routine.find(params[:id])

    if @routine.update(routine_params)
      head :no_content
    else
      render json: @routine.errors, status: :unprocessable_entity
    end
  end

  # DELETE /routines/1
  # DELETE /routines/1.json
  def destroy
    @routine.destroy

    head :no_content
  end

  private

    def set_routine
      @routine = Routine.find(params[:id])
    end

    def routine_params
      params.require(:routine).permit(:name, :user_id)
    end
end
