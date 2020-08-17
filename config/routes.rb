Rails.application.routes.draw do
  root 'chatroom#index'
  get 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'messages', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
