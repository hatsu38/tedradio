Rails.application.routes.draw do

  root to: "talks#index"
  get 'search', to: 'talks#search'
  resources :talks, only: [:index,:show]
  resources :categories, only: [:index,:show]
  resources :subcategories, only: [:show]
  resources :speakers, only: [:index,:show]

  get '*path', controller: 'application', action: 'render_404'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
