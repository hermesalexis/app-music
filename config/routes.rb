Rails.application.routes.draw do
  get '/artists' , to: 'artists#index'
  get '/artists/new', to: 'artists#new', as: 'new_artist'
  post '/artists' , to: 'artists#create'
  
end
