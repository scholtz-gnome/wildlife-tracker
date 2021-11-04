Rails.application.routes.draw do
  root 'animals#index'

  resources :animals do
    resources :sightings
  end
  resources :regions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
