Rails.application.routes.draw do
  devise_for :users
  root "movies#index"

  resources :movies
  resources :users, except: [:edit, :update, :show, :index]
  resources :rankings, only: [:create, :destroy]
  resources :categories, except: [:edit, :update]
end
