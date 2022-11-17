Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Un utilisateur peut voir toutes les listes => GET "lists"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end

# only: [:index, :show, :new, :create] do
# resources :bookmarks, only: [:new, :create, :destroy]
