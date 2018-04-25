Rails.application.routes.draw do
  get 'trainers/index'

  root to: 'pages#home'
  resources :trainers, only: [:index, :show]
end
