Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Landing page
  root to: "pages#home"

  # 1/ Logique de renter (et visitor)
  resources :costumes, only: %i[index show] do # un visitor/renter peut voir les costumes (index) et leur fiche individuelle (show)
    resources :reservations, only: %i[new create] # un renter peut créer une réservation (basée sur un costume)
  end
  resources :reservations, only: %i[index] # un renter peut voir ses réservations

  # 2/ Logique de owner
  namespace :owner do # Le namespace permet de préfixer l'URL avec "owner" quand on est un user de type owner
    resources :costumes, only: %i[index new create edit update] # un owner peut voir ses costumes, en créer et les modifier
    resources :reservations, only: %i[index] do # un owner peut voir ses réservations
      member do # un owner peut accepter/décliner une réservation
        patch :accept # patch demande l'id de la réservation afin de créer une méthode non CRUD (on passe par "member" car "resources" ne gère que les méthodes CRUD par défaut)
        patch :decline
      end
    end
  end
end
