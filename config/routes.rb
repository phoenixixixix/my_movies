Rails.application.routes.draw do
  devise_for :users
  root "movies#index"

  resources :movies do
    resources :rankings, only: [:create]
  end
  resources :categories, except: [:edit, :update, :new]
end
