Rails.application.routes.draw do
  get '/events/new', to: 'events#new'
  post '/events', to: 'events#create'
  get '/events/:id', to: 'events#show'
  delete '/events/:id', to: 'events#destroy'
  get '/events/:id/edit', to: 'events#edit'
  put '/events/:id', to: 'events#update'

  get '/', to: 'pages#home' 
  get '/about', to: 'pages#about_us' 
  


  get '/login', to: 'session#new'
  # post '/login', to: 'session#newuser'
  get '/signup', to: 'session#signup'
  post '/signupdetails', to: 'session#signupdetails'
  post '/session', to: 'session#create' 
  delete '/session', to: 'session#destroy' 
end
