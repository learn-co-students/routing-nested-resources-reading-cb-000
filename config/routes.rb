Rails.application.routes.draw do

  resources :authors, only: [:show] do

    resources :posts, only: [:show, :index]

  end
  # get 'authors/:id/posts' => 'authors#posts_index'
  # get 'authors/:id/posts/:post_id' => 'authors#post'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
