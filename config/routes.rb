Rails.application.routes.draw do
  resources :talents, only: [:index, :show]
  resources :skills, only: [:index, :show]
  resources :characters, only: [:index, :show]

  root 'characters#index'
end
