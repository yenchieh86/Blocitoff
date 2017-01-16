Rails.application.routes.draw do
  
  resources :users, only: [] do
    resources :items, only: [:new, :create]
  end
  
  authenticated :user do
    root 'items#index', as: :authenticated_root
  end

  root 'welcome#index'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
