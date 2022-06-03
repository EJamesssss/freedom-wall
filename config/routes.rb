Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: 'posts#index', as: 'posts'
  # get '/new', to: 'posts#new'
  # get '/:id/edit', to: 'posts#edit'
  # get '/:id', to: 'posts#show', as: 'post'
  # post '/', to: 'posts#create'
  root to: 'posts#index'
  resources :posts

end
