Rails.application.routes.draw do
  resources :deposits
  resources :lodgementls
  resources :withdrawls
  resources :transactions
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
