class SightingsController < ApplicationController
  before_action(:find_sighting_by_id, only: %i[show edit update destroy])

  def index
    @sightings = Sighting.all
  end

  def show
    @animal = Animal.find(@sighting.animal_id)
    @region = Region.find(@sighting.region_id)
  end

  def edit
    @animals = Animal.all
    @regions = Region.all
  end

  def update
    if @sighting.update(sighting_params)
      redirect_to sighting_path(@sighting)
    else
      render :edit
    end
  end

  def destroy
    @sighting.destroy

    redirect_to '/sightings'
  end

  private

  def sighting_params
    params.require(:sighting).permit(:region_id, :animal_id, :date, :latitude, :longitude)
  end

  def find_sighting_by_id
    @sighting = Sighting.find(params[:id])
  end
end
