Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :items do
    resources :bookings
  end
  get 'dashboard', to: 'dashboard#new'
end
