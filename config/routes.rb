Rails.application.routes.draw do
  resources :talents
  resources :skills, only: [:index, :show]
  resources :characters, only: [:index, :show]

  resources :users, only: [:new, :create]

  resources :user_sessions, only: [:create, :destroy]

  resources :password_resets, only: [:new, :create, :edit, :update]

  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  root 'intro_page#index'
end
