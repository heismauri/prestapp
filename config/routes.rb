Rails.application.routes.draw do
  devise_for :users, path: ''
  root to: 'pages#home'
  resources :articles
  get '/search', to: 'articles#search'
  resources :categories, only: %i[index show]
  resources :orders, only: %i[index edit update]
  resources :order_items, only: %i[create destroy]
  resources :order_details, only: %i[create destroy]
  resources :pages, only: %i[show], path: '', param: :page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
