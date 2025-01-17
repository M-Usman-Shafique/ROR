# config/routes.rb
Rails.application.routes.draw do

  devise_for :users, controllers: {
   sessions: 'users/sessions',
   registrations: 'users/registrations',
   passwords: 'users/passwords',
   confirmations: 'users/confirmations',
  }
  root "home#index"
  resources :employees
  resources :documents

  get "about", to: "home#about"
  get "contact", to: "home#contact"

  get "up" => "rails/health#show", as: :rails_health_check

end
