Rails.application.routes.draw do
  devise_for :users

  root to: "events#index"

  resources :events do
    resources :attendants, only: [:create]
  end
end
