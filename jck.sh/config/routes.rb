Rails.application.routes.draw do
  get "home/index"

  get "projects", to: "projects#index", as: "projects"
  get 'about', to: 'pages#about', as: 'about'
  get 'blog', to: 'pages#blog', as: 'blog'
  get 'aquarium', to: 'pages#aquarium', as: 'aquarium'
  root 'home#index'
  get "up" => "rails/health#show", as: :rails_health_check


end
