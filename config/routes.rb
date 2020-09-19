Rails.application.routes.draw do
  resources :users
  # Add your routes here
  root 'welcome#home'
  get '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
