Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :items
  get 'dashboard', to: 'dashboard#show'
end
