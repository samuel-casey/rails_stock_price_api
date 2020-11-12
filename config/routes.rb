Rails.application.routes.draw do
  resources :stocks, only: [:index]
  resources :average_prices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
