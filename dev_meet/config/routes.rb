Rails.application.routes.draw do
  devise_for :users

  resources :events do
    resources :attendants, only: [:create]
  end

  get '/home', to: 'home#index'
  root to: "events#index"
end
