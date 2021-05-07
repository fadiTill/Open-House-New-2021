Rails.application.routes.draw do
   get 'dashboard/index'
  #  get "dashboard"=>'dashboard/index', as: :dashboard
  get 'dashboard/houses'
  get 'dashboard/reports'
  devise_for :users
  # get 'publicpage/main'
root to: 'publicpage#main'
  resources :guests
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
