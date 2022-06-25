

Rails.application.routes.draw do
  resources :listings


  resources :conversations do
    resources :messages
  end


  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post "conversations/:id/messages", to: "listings#place_interest", as: "place_interest"
end
