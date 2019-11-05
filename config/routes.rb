Rails.application.routes.draw do
  resources :artists 
  resources :tracks
  resources :albums
  root 'artists#index'
  root 'artists#show'
end
