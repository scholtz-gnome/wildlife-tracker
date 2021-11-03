class SightingsController < ApplicationController
  def index
    @animal = Animal.find(params[:animal_id])
    @sightings = @animal.sightings
  end
  
  def show
    @sighting = Sighting.find(params[:id])
  end

  def new
    @sighting = Sighting.new(animal_id: params[:animal_id])
    @animals = Animal.all()
    @regions = Region.all()
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.create(sighting_params)

    redirect_to animal_path(@animal)
  end

  private
    def sighting_params
      params.require(:sighting).permit(:animal_id, :region_id, :date, :latitude, :longitude)
    end
end