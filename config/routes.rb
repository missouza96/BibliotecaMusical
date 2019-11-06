Rails.application.routes.draw do
  resources :artists 
  resources :tracks, except :destroy
  resources :albums, except :destroy
  root 'artists#index'
end
