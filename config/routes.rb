Rails.application.routes.draw do
  root "questions#index"
  resources :questions, only: %i[new create index show]
  resources :answers, only: :create
  devise_for :users
end
