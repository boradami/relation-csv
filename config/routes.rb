Rails.application.routes.draw do
  
  root 'talukas#index'
  
  resources :states
  resources :dists
  resources :talukas do
    collection { post :import }
  end
  
end
