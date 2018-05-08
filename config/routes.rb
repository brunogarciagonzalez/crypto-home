Rails.application.routes.draw do
  # root to: "currencies#index"
  # get 'currencies' to: 'currencies#index'
  resources :users
  resources :currencies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
