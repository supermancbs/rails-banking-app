Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :deposits
  resources :lodgementls
  resources :withdrawls
  resources :transactions
  resources :users

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
