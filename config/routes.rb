Rails.application.routes.draw do
  
  root 'home#index'
  get '/help', to: 'help#help'
  get '/cars', to: 'cars_list#cars_list'
  get '/search', to: 'search#search'
  get '/my_searches', to: 'my_searches#my_searches'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
