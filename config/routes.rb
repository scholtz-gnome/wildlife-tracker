Rails.application.routes.draw do
  root "animals#index"

  resources :animals do
    resources :sightings, only: [:index, :new, :create]
  end
  resources :sightings, only: [:show, :edit, :update, :destroy]
  resources :regions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
