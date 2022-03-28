Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
