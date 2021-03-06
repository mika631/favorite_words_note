Rails.application.routes.draw do
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'words#index'
  resources :words, only:[:index, :show]
  resources :users, only:[:show]
    
  resources :wordcreaters, only:[:new, :create]
  # get 'words' => 'words#index'
  # get 'words/new' -> 'words#new'

  # get 'users/:id' => 'users#show'
end
