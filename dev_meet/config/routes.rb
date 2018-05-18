Rails.application.routes.draw do
  devise_for :users

  resources :events

  get '/home', to: 'home#index'
  root to: "events#index"
end
