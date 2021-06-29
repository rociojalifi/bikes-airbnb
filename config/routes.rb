Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show]
end
