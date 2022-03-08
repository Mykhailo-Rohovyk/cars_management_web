Rails.application.routes.draw do
  resources :cars, only: %i[index new create edit update destroy show]
  root 'home#index'
  get '/help', to: 'help#help'

  get '/search', to: 'searches#searches'

  get '/my_searches', to: 'my_searches#my_searches'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
