Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  root 'channels#index'

  resources :users
  resources :channels
  resources :messages

  post 'messages/user_typing' => 'messages#user_typing'

  get :login, :controller => :sessions, :action => :edit
  patch :login, :controller => :sessions, :action => :update
  delete :logout, :controller => :sessions, :action => :destroy

end
