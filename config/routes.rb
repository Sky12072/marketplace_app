

Rails.application.routes.draw do
  resources :listings

  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :conversations do
    resources :messages
  end
  

  get '/about' => 'pages#about', as: "about"
end
