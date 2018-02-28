Rails.application.routes.draw do
  get 'sender_addresses/index'

  get 'transactions/index'

  get 'transactions/new'

  get 'charities/index'

  get 'charities/show'

  devise_for :users
  root to: 'charities#index'
  resources :charities, only: [:index, :show] do
    resources :transactions, only: [:new, :create, :index]
  end
  resources :sender_address, only: [:index]
end
