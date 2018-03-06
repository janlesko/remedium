Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  root to: 'charities#index'
  resources :charities, only: [:index, :show, :edit, :update] do
    resources :transactions, only: [:index, :new, :create]
    resources :items, only: [:create]
  end
  resources :sender_address, only: [:index]
end
