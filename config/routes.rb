Rails.application.routes.draw do
  # root to: "currencies#index"
  # get 'currencies' to: 'currencies#index'
  resources :users, only: [:index, :show, :create]
  resources :messages, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
