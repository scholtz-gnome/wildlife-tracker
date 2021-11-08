Rails.application.routes.draw do
  root 'animals#index'

  resources(:animals, :regions, :sightings)

  # Animal Sightings Endpoints
  get '/animals/:animal_id/sightings', to: 'animal_sightings#index'
  get '/animals/:animal_id/sightings/new', to: 'animal_sightings#new'
  post '/animals/:animal_id/sightings', to: 'animal_sightings#create'
end
