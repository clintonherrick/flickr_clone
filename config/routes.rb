Rails.application.routes.draw do
  root 'images#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
