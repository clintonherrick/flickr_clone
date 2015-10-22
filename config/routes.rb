Rails.application.routes.draw do
  root 'home#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :photos
  resources :home, only: [:index]
  resources :image_attachments do
    resources :comments
    resources :tags
  end
  resources :posts
end
