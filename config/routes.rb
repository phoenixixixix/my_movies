Rails.application.routes.draw do
  root "movies#index"

  resources :movies
  resources :users, only: [:edit, :update]
  resources :rankings, only: [:create, :destroy]
  resources :categories, except: [:edit, :update]
end
