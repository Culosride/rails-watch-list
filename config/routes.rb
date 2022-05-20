Rails.application.routes.draw do
  root to: 'lists#index'

  resources :lists, only: %i[new create show] do
    resources :bookmarks, only: %i[new create]

  end
  resources :bookmarks, only: %i[destroy]

  # get 'lists/index'
  # get 'lists/new'
  # get 'lists/show'
  # get 'lists/create'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
end
