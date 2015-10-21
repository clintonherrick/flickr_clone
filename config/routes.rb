Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :images
  resources :comments
  resources :home, only: [:index]
  resources :image_attachments
  resources :posts
end
