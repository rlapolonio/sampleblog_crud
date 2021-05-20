Rails.application.routes.draw do
  root 'articles#index'
  get '/' => 'articles#index'
  get '/articles' => 'articles#index', as: 'articles'
  get '/articles/new' => 'articles#new', as: 'new_article'
  get '/articles/:id' => 'articles#show', as: 'article'
  post '/articles' => 'articles#create'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch '/articles/:id' => 'articles#update'
  put '/articles/:id' => 'articles#update'
  delete '/articles/:id' => 'articles#delete'
end
