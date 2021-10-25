Rails.application.routes.draw do
  root "animals#index"

  resources :animals
  resources :regions

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
