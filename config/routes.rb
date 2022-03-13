Rails.application.routes.draw do
  devise_for :users
  root 'tasks#index'

  resources :tasks, only: %i[index show new create]
end
