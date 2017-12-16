Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts, only: [:index, :show]
  end

  resources :posts, only: [:new, :create, :edit, :update, :index, :show]

  root 'posts#index'
end
