Rails.application.routes.draw do
  resources :loads
  resources :shippers
  resources :relay_points
  resources :vehicles
  resources :dispatchers
  resources :drivers
  resources :carriers
  get 'home/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "home#index"

end
