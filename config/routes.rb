Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to:'users#create'
  get '/users', to:'users#index'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'

  get '/attractions/new', to: 'attractions#new', as: 'new_attraction'
  post '/attractions', to: 'attractions#create'
  get '/attractions', to: 'attractions#index'
  get '/attractions/:id', to: 'attractions#show', as: 'attraction'
  get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
  patch '/attractions/:id', to: 'attractions#update'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get 'rides/:id', to: 'rides#show', as: 'ride'
  post '/rides', to:"rides#create", as: 'rides'
  
end