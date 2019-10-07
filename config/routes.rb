Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#show'
  get '/users/new', to: 'users#new'
  get '/users/login', to: 'users#login'
  get '/tweets/detail/:id', to: 'tweets#detail'
  post '/users/add', to: 'users#add'
  get '/tweets/show', to: 'tweets#show'
  post '/users/login2', to: 'users#login2'
  get '/tweets/new', to: 'tweets#new'
  post 'tweets/add', to: 'tweets#add'
end
