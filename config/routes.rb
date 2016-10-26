Rails.application.routes.draw do

  root 'sessions#new'

  get '/main' => 'sessions#new'

  post '/users' => 'users#create'

  get '/users/:id' => 'users#show'

  post '/login' => 'sessions#login'

  delete '/logout' => 'sessions#logout'

  get '/bright_ideas' => 'ideas#index'

  post '/bright_ideas' => 'ideas#create'

  get '/bright_ideas/:id' => 'ideas#show'

  delete '/bright_ideas/:id' => 'ideas#destroy'

  post '/likes' => 'likes#create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
