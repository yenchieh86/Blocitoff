Rails.application.routes.draw do
  
  resources :items
  resources :users, only: [:show]
  
  authenticated :user do
    root 'items#index', as: :authenticated_root
  end

  root 'welcome#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }

end
