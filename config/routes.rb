Rails.application.routes.draw do
  get "/events/new", to: "events#new"
  post "/events", to: "events#create"
  get "/events/:id", to: "events#show"
  delete "/events/:id", to: "events#destroy"
  get "/events/:id/edit", to: "events#edit"
  put "/events/:id", to: "events#update"

  get "/", to: "pages#home"
  get "/about", to: "pages#about_us"
  get "/profile", to: "pages#profile"
  post "/profile", to: "pages#create"
  get "/profile/:id", to: "pages#profile"
 

  get "/login", to: "session#new"
  # post "/login", to: "session#create"
  get "/signup", to: "session#signup"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
  post "/signupdetails", to: "session#signupdetails"



end
