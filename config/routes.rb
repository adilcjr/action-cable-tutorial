Rails.application.routes.draw do

  root 'chatrooms#show'
  get 'messages', to: 'messages#index'

  mount ActionCable.server => '/cable'
end
