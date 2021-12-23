Rails.application.routes.draw do
  #  get 'users/edit'
  #resources :users, only: [:edit]
  resources :users, only: [:edit, :update]
  devise_for :users
  get 'messages/index'
  root to: "messages#index"
end
