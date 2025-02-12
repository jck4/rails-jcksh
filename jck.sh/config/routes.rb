Rails.application.routes.draw do
  get "pages/about"
  get "home/index"
  get "projects", to: "projects#index", as: "projects"
  get 'about', to: 'pages#about', as: 'about'
  get 'aquarium', to: 'pages#aquarium', as: 'aquarium'
  root 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check


end
