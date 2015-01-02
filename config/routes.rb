BandApp::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'admin-login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  # This is for the back end homepage
  get 'home/' => 'home#index', as: :home

  # These routes are for shows
  get 'tourdates/' => 'tourdates#index', as: :tourdates
  get 'tourdates/new' => 'tourdates#new', as: :new
  get 'tourdates/:id' => 'tourdates#show', as: :tourdate
  post 'tourdates/' => 'tourdates#create', as: :new_tourdate
  get 'tourdates/:id/edit' =>  'tourdates#edit', as: :edit_tourdate
  patch 'tourdates/:id' => 'tourdates#update', as: :update_tourdate
  delete 'tourdates/:id' => 'tourdates#destroy', as: :delete_tourdate

    # These routes are for news posts
  get 'posts/' => 'posts#index', as: :posts
  get 'posts/new' => 'posts#new', as: :addpost
  get 'posts/:id' => 'posts#show', as: :post
  post 'posts/' => 'posts#create', as: :new_post
  get 'posts/:id/edit' =>  'posts#edit', as: :edit_post
  patch 'posts/:id' => 'posts#update', as: :update_post
  delete 'posts/:id' => 'posts#destroy', as: :delete_post

  #These routes determine the front end
  root 'application#index'
  get 'about/' => 'application#about', as: :about
  get 'music/' => 'application#music', as: :music
  get 'video/' => 'application#video', as: :video
  get 'photos/' => 'application#photos', as: :photos
  #For News and Shows
  get 'news/index' => 'news#index', as: :news
  get 'shows/index' => 'shows#index', as: :shows

end
