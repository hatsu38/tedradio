Rails.application.routes.draw do


  root to: "talks#index"
  resources :talks, only: [:index,:show]
  resources :categories, only: [:index,:show]
  resources :subcategories, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
