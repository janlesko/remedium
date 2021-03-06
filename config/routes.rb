Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  get "test", to: "pages#test"
  root to: "pages#home"

  resources :charities, only: [:index, :show, :edit, :update] do
    resources :transactions, only: [:index, :new, :create]
    resources :items, only: [:create]
  end
  resources :sender_addresses, only: [:index]
end
