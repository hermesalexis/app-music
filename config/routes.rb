Rails.application.routes.draw do
	
  get '/artists/:id/albums/new', to: 'albums#new', as: 'new_album'
  post '/artists/:id', to: 'albums#create', as: 'albums'

  get '/artists' , to: 'artists#index'
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists' , to: 'artists#create'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  
end
