Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # 1. read all articles
  root to: 'articles#index'
  get 'articles', to: 'articles#index', as: 'articles'
  # 2. read one article
  get 'articles/new', to: 'articles#new', as: 'new'
  get 'articles/:id', to: 'articles#show', as: 'article'
  # 3. create a article
  post 'articles', to: 'articles#create'
  # 4. update a article
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit'
  patch 'articles/:id', to: 'articles#update'
  # 5. delete a article
  delete 'articles/:id', to: 'articles#destroy', as: 'delete'

end
