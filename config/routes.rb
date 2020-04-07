Rails.application.routes.draw do
  root to: 'items#index'

  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   get    "items",          to: "items#index"

  get    "items/new",      to: "items#new",  as: :new_item
  post   "items",          to: "items#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "items/:id",      to: "items#show", as: :item

  get    "items/:id/edit", to: "items#edit", as: :edit_item
  patch  "items/:id",      to: "items#update"

  delete "items/:id",      to: "items#destroy"

end
