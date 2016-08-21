Rails.application.routes.draw do
  resources :mileage_entries
  resources :posts
  devise_for :users
  root "home#index"
  resources :tutorials 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
