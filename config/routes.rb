Rails.application.routes.draw do
  root 'welcome#home'

  get '/home' => 'welcome#home'

  match '/auth/:provider/callback', to: 'sessions#create', via: %i[get post]
end
