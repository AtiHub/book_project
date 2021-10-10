Rails.application.routes.draw do
  get 'profile/:user_id', to: 'users#profile', as: 'profile'
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  devise_for :users
  resources :books do
    resources :comments do
      patch :accept, on: :member
    end
  end
  root 'welcome#index'
end
