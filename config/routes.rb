Rails.application.routes.draw do
  
  devise_for :users
  resources :elements do
    resources :comments
    member do
        post 'upvote'
        post 'downvote'
    end
  end
  
  root 'elements#welcome'

  get '/about', to: 'elements#about'
  get '/collections', to: 'elements#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
