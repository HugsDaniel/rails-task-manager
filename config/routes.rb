Rails.application.routes.draw do
  root to: 'pages#home'

  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  get 'asks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  delete "tasks/:id", to: "tasks#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
