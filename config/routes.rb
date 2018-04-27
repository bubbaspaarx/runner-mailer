Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  root to: 'pages#home'
  get 'runner/:id/send_mail', to: 'runner#send_mail', as: 'send_mail'
  resources :trainers, only: [:index, :show]
end
