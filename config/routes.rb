Rails.application.routes.draw do
  root to: 'tasks#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  
  put 'tasks/:id', to: 'tasks#update'
  get 'tasks/:id/edit', to: 'tasks#edit'
  
  resources :tasks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:create, :show]
end
