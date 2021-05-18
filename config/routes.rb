Rails.application.routes.draw do
   get 'dashboard/index'
  #  get "dashboard"=>'dashboard/index', as: :dashboard
  get 'dashboard/houses'
  get 'dashboard/reports'
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  resources :users, only: [:index, :show, :edit, :update] do
    member do
      delete 'delete_image/:image_id', action:'delete_image', as: 'delete_image'
    end
  end 
root to: 'publicpage#main'
  resources :guests
  resources :houses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
