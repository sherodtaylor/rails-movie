RailsMovie::Application.routes.draw do
  root :to => 'movie#home'
  get '/search' => 'movie#json_data'
end
