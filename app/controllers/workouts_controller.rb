class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  # def new
  #   @workout = Workout.new
  #   3.times {@workout.exercises.build}
  # end

  # GET /workouts
  def index
    @workouts = Workout.all

    render json: @workouts
  end

  # GET /workouts/1
  def show
    render json: @workout
  end

  # POST /workouts
  def create
    puts "WORKOUT PARAMS:"
    puts(workout_params[:exercises][0]["name"])
    @workout = Workout.new(date: workout_params["date"], workout_type: workout_params["workout_type"])
    @workout.exercises.build(name: workout_params[:exercises][0]["name"], weight: workout_params[:exercises][0]["weight"])
    @workout.exercises.build(name: workout_params[:exercises][1]["name"], weight: workout_params[:exercises][1]["weight"])
    @workout.exercises.build(name: workout_params[:exercises][2]["name"], weight: workout_params[:exercises][2]["weight"])

    if @workout.save
      render json: @workout, status: :created, location: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /workouts/1
  def update

    params.exercises.each do |exercise|
      @workout.exercises.build(exercise)
    end

    if @workout.update(workout_params)
      render json: @workout
    else
      render json: @workout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workout_params
      params.require(:workout).permit!
    end
end
