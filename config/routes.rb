Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users
  root "movies#index"

  resources :movies do
    resources :rankings, only: [:create]
  end
  resources :categories, only: [:show]
end
