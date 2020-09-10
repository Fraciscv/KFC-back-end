Rails.application.routes.draw do
  resources :comments
  resources :add_event_to_users
  resources :events
  resources :users

  get '/getbirthdatecontent', to: 'events#getbirthdatecontent'
  post '/getbirthdatecontent', to: 'events#getbirthdatecontent'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
