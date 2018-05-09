Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :tasks, only: [:index, :show, :new, :create]
  resources :users, only: [:create]
end
