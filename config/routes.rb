Rails.application.routes.draw do
  resources :clocks

  root 'clocks#index'
end
