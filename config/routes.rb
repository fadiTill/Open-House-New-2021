Rails.application.routes.draw do
  devise_for :accounts
  get 'publicpage/main'
root to: 'publicpage#main'
  resources :guests
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
