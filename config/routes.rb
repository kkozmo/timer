Rails.application.routes.draw do
  devise_for :users
  resources :clocks
  root 'pages#home'
  get "clocks" => "clocks#index"
end
