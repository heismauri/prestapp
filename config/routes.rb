Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles
  resources :categories, only: %i[index show]
  resources :orders, only: %i[show]
  resources :order_items, only: %i[new create destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
