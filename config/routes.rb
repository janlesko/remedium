Rails.application.routes.draw do
  devise_for :users
  root to: 'charities#index'
  resources :charities, only: [:index, :show] do
    resources :transactions, only: [:new, :create, :index]
  end
  resources :sender_address, only: [:index]
end
