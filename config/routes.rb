Rails.application.routes.draw do
  root to: 'pages#home'

  get '/my_bikes', to: 'bikes#my_bikes', as: :my_bikes

  devise_for :users
  resources :bikes do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]
end
