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

  # These routes are for uploading music
  get 'songs/' => 'songs#index', as: :songs
  get 'songs/new' => 'songs#new', as: :addsong
  post 'songs/' => 'songs#create', as: :new_song
  get 'songs/:id/edit' => 'songs#edit', as: :edit_song
  patch 'songs/:id' => 'songs#update', as: :update_song
  delete 'songs/:id' => 'songs#destroy', as: :delete_song

  # These routes are for uploading videos
  get 'vids/' => 'vids#index', as: :vids
  get 'vids/new' => 'vids#new', as: :addvid
  post 'vids/' => 'vids#create', as: :new_vid
  get 'vids/:id/edit' => 'vids#edit', as: :edit_vid
  patch 'vids/:id' => 'vids#update', as: :update_vid
  delete 'vids/:id' => 'vids#destroy', as: :delete_vid

  # These routes are for creating a bio (details)
  get 'descriptions/' => 'descriptions#index', as: :descriptions
  get 'descriptions/new' => 'descriptions#new', as: :add_description
  post 'descriptions/' => 'descriptions#create', as: :new_description
  get 'descriptions/:id/edit' => 'descriptions#edit', as: :edit_description
  patch 'descriptions/:id' => 'descriptions#update', as: :update_description
  delete 'descriptions/:id' => 'descriptions#destroy', as: :delete_description

  #These routes determine the front end
  root 'application#index'
  get 'photos/' => 'application#photos', as: :photos
  #For News and Shows
  get 'news/' => 'news#index', as: :news
  get 'shows/' => 'shows#index', as: :shows
  get 'music/' => 'music#index', as: :music
  get 'video/' => 'video#index', as: :video
  get 'about/' => 'about#show', as: :about

end
