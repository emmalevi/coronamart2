Rails.application.routes.draw do
  root to: 'items#index'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items

  resources :users

  get    "users", to: "users#dashboard", as: :dashboard
end
