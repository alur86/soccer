Rails.application.routes.draw do
  resources :events
  resources :one_team_players
  resources :two_team_players
  resources :one_tean_players
  resources :second_teams
  resources :first_teams
  resources :games


  root to: 'games#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
