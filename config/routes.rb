Rails.application.routes.draw do
  devise_for :users, :paths => 'users' 

  resources :subtitles, only: [:index, :create, :new, :show]

  get '/search', to: 'subtitles#search'

end
