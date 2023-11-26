class FoodPlacesController < ApplicationController
  before_action :set_food_place, only: %i[ show edit update destroy ]

  # GET /food_places or /food_places.json
  def index
    @food_places = FoodPlace.all
  end

  # GET /food_places/1 or /food_places/1.json
  def show
  end

  # GET /food_places/new
  def new
    @food_place = FoodPlace.new
  end

  # GET /food_places/1/edit
  def edit
  end

  # POST /food_places or /food_places.json
  def create
    @food_place = FoodPlace.new(food_place_params)

    respond_to do |format|
      if @food_place.save
        format.html { redirect_to food_place_url(@food_place), notice: "Food place was successfully created." }
        format.json { render :show, status: :created, location: @food_place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_places/1 or /food_places/1.json
  def update
    respond_to do |format|
      if @food_place.update(food_place_params)
        format.html { redirect_to food_place_url(@food_place), notice: "Food place was successfully updated." }
        format.json { render :show, status: :ok, location: @food_place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_places/1 or /food_places/1.json
  def destroy
    @food_place.destroy!

    respond_to do |format|
      format.html { redirect_to food_places_url, notice: "Food place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_place
      @food_place = FoodPlace.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_place_params
      params.require(:food_place).permit(:name, :description, :address, :phone_number, :opening_hours)
    end
end
