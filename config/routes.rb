Rails.application.routes.draw do
  devise_for :users

  root to: "questions#index"

  resources :questions do
    resources :answers, only: [:new, :create]
  end
  resources :users ,only: :show
end
