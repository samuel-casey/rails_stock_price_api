Rails.application.routes.draw do
  resources :average_prices, only: [:index]
  resources :stocks, only: [:index, :show] do
    resources :average_prices, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
