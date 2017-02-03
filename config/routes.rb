Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :items
  resources :users, only: [:show]

  authenticated :user do
    root 'items#index', as: :authenticated_root
  end

  root 'welcome#index'
end