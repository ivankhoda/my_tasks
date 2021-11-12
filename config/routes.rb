Rails.application.routes.draw do
  # Project routes
  get '/projects', to: 'project#index'
  # Additional method for search project by id
  get '/projects/:id', to: 'project#show'

  post '/projects', to: 'project#create'
  # Todos routes
  post '/todos', to: 'task#create'
  patch '/projects/:id/todos/:id', to: 'task#update'
end
