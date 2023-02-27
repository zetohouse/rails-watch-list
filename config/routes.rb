Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookmarks, only: [:new, :create, :destroy] do
    resources :lists, only: [:index, :show, :new, :create] do
      resources :movies
  end
end
  # Defines the root path route ("/")
  # root "articles#index"
end
