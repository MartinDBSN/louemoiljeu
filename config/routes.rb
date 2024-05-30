Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/games', to: 'games#index', as: :games
  get '/games/:id', to: 'games#show', as: :game

  get '/games/new', to: 'games#new', as: :new_game

  get 'users/:id/rentals', to: 'rentals#index', as: :rentals

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
