Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  get 'page/index'
  root 'page#index'

  get '/user_index' => 'page#user_index'
  get '/admin_index' => 'page#admin_index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
