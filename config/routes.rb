# config/routes.rb
Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :employees
  resources :documents

  get "about", to: "home#about"
  get "contact", to: "home#contact"

  get "up" => "rails/health#show", as: :rails_health_check

end
