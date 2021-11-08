Rails.application.routes.draw do
  root 'animals#index'

  resources(:animals, :regions, :sightings)

  # Animal Sightings Endpoints
  get '/animals/:animal_id/sightings', to: 'animal_sightings#index'
  get '/animals/:animal_id/sightings/new', to: 'animal_sightings#new'
  post '/animals/:animal_id/sightings', to: 'animal_sightings#create'

  # Reports Endpoints
  get '/reports', to: 'reports#index'
  get '/reports/new', to: 'reports#new'
  post '/reports', to: 'reports#create'

  # Report Sightings Endpoints
  get '/reports/:id/sightings', to: 'report_sightings#index'
end
