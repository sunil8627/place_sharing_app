Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => "dashboard#index"

  match 'list_of_users', to: 'dashboard#list_of_users', via: [:get]
  match 'places_shared_by_you', to: 'dashboard#places_shared_by_you', via: [:get]
  match 'places_shared_with_you', to: 'dashboard#places_shared_with_you', via: [:get]
  match 'share_new_location', to: 'dashboard#share_new_location', via: [:get]
  match 'create_new_location', to: 'dashboard#create_new_location', via: [:post]

  get '/:username', to:'dashboard#display_public_places', as: "display_public_places"
end
