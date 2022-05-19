Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/new'
  get 'lists/show'
  get 'lists/create'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
