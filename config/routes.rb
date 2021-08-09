Rails.application.routes.draw do
  devise_for :renters
  devise_for :agents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'main#index'
get '/delimage/:id'=>"agent#delimage", as: :delimage
get '/unrent/:id' => 'properties#unrent' , as: :unrent
get '/remove/:id' => 'properties#remove' , as: :remove
get '/addprop/:id' => 'properties#new', as: :addprop
get '/viewproperty/:id' => 'properties#show', as: :viewproperty
get '/displayprop', action: :show, controller: 'agent'
get '/viewprop', action: :show, controller: 'renter'
get '/addapproach/:id', action: :addapproach, controller: 'agent', as: :addapproach
get '/addrentedprop/:id', action: :addrented, controller: 'properties', as: :addrentedprop
get '/addwishlist/:id', action: :addwish, controller: 'properties', as: :addwishlist
get '/rentedlistpath', action: :showrented, controller: 'properties', as: :rentedlistp
get '/wishlistpath', action: :showwish, controller: 'properties', as: :wishlistp
post '/reviews', action: :create, controller: 'review', as: :reviews
get '/delimageattachment/:id', action: :delete_image_attachment, controller: :agent, method: :delete,as: :delimageattachment 
get '/viewapproachedlist/:id', action: :viewapproach, controller: 'agent',as: :viewapproach
post '/create', action: :create, controller: :company
resources :properties
resources :company
end
