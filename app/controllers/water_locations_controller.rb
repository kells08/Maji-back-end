class WaterLocationsController < ApplicationController
  before_action :set_water_location, only: [:show, :update, :destroy]

  # GET /water_locations
  def index
    water_locations = WaterLocation.all
    render json: water_locations, get_image_url: get_image_url
  end

  # GET /water_locations/1
  def show
    render json: water_location
  end

  # POST /water_locations
  def create
    water_location = WaterLocation.new(water_location_params)

    if water_location.save
      render json: water_location, get_image_url: get_image_url, status: :created, location: water_location
    else
      render json: water_location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /water_locations/1
  # image_url is the callback from app controller 
  # get_image_url is called from app controller and returns the callback (PROC!)
  def update
    if water_location.update(water_location_params)
    image_url = get_image_url
    render json: water_location, get_image_url: image_url
    else
      render json: water_location.errors, status: :unprocessable_entity
    end
  end

  # DELETE /water_locations/1
  def destroy
    water_location.destroy
    render json: water_location

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_location
      @water_location = WaterLocation.find(params[:id])
    end

    def water_location
      @water_location
    end

    # Only allow a trusted parameter "white list" through.
    def water_location_params
      # params.require(:water_location).permit()
      params.permit(water_location: {})[:water_location]
    end 
end
