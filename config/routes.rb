Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pools#index"
  resources :pools, except: [:edit, :update, :index] do
    resources :bookings, only: [:new, :create]
  end
  resources :poolrental, only: [:index]
  resources :bookings, only: [:index, :update, :destroy]
  namespace :owner do
    resources :bookings, only: [:index, :update, :edit, :destroy]
  end
end
