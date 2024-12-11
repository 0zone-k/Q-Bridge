Rails.application.routes.draw do
  devise_for :users

  root to: "questions#index"

  resources :questions do
    resources :answers, only: [:new, :create]
    collection do
      get 'search'
    end
  end
  resources :users ,only: :show
  resources :departments ,only: [:show,:new, :create]


end
