Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :bikes do
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:show]
end
