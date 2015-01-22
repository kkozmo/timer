Rails.application.routes.draw do
  devise_for :users
  resources :clocks

  root 'clocks#index'
end
