Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    # get "about", to: "movies#about"
    # get "index", to: "movies#index"

    root to: "lists#index"
    resources :lists, except: [:edit, :update] do
      resources :bookmarks, only: [:new, :create]
    end
  resources :bookmarks, only: :destroy
end
