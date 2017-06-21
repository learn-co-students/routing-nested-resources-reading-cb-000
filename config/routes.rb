Rails.application.routes.draw do
  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end
  resources :posts, except: [:destroy]

  root 'posts#index'
end
