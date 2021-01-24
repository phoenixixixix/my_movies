Rails.application.routes.draw do
  devise_for :users
  root "movies#index"

  resources :movies
  resources :rankings, only: [:create, :destroy]
  resources :categories, except: [:edit, :update, :new]
end
