Rails.application.routes.draw do
  get 'posts/new', to: 'posts#new'
  post 'posts/new', to: 'posts#create'
  get 'posts/index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
