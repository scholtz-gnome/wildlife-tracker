Rails.application.routes.draw do
  root "animals#index"

  get "/animals", to: "animals#index"
  get "/animals/new", to: "animals#new"
  get "/animals/:id", to: "animals#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
