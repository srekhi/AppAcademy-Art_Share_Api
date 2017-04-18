Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :destroy, :create, :show, :update] do
    resources :comments, only: [:create, :index, :destroy]
  end
  
  resources :artworks, only: [:destroy, :create, :show, :update] do
    resources :comments, only: [:create, :index, :destroy]
  end
  # get 'users' => 'users#index'
  # post 'users' => 'users#create'
  # get 'users/new' => 'users#new', :as => 'new_user'
  # get 'users/:id/edit' => 'users#edit'
  # get 'users/:id' => 'users#show'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
  resources :artwork_shares, only: [:create, :destroy]
  get '/users/:user_id/artworks' => 'artworks#index'
end
