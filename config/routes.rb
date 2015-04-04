RailsBlog::Application.routes.draw do



  resources :users, :only => [:new, :show, :index]
  resources :tags, :only => [:show, :index]

  resources :posts do
    resources :comments, :only => [:new, :create]
  end

  get '/auth/github/callback', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  root 'posts#index'
end
