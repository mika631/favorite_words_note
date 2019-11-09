Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'words#index'
  resources :words, only:[:index, :new]
  # get 'words' => 'words#index'
  # get 'words/new' -> 'words#new'
end
