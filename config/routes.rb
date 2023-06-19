Rails.application.routes.draw do
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pools#index"
  resources :pools, except: [:edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:update, :show, :edit, :destroy]
end
