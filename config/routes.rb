Rails.application.routes.draw do
  
  
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :verify_codes
  # resources :verify_code, only: [:create]
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
