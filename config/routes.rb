Rails.application.routes.draw do

  devise_for :users
  resources :users
  root 'chatrooms#show'
  get 'messages', to: 'messages#index'

  mount ActionCable.server => '/cable'
end
