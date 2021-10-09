Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  devise_for :users
  resources :books do
    resources :comments
  end
  root 'welcome#index'
end
