Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#list'
  # CREATE - ask for empty form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # CREATE - receive filled-in form
  post 'tasks', to: 'tasks#create'
  # READ - all tasks
  get 'tasks', to: 'tasks#list'
  # READ - one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # UPDATE - get filled-in form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # UPDATE - receive updated form
  patch 'tasks/:id', to: 'tasks#update'
  # DELETE a single record
  delete 'tasks/:id', to: 'tasks#destroy'
  # resources :tasks, only: [:new, :create]
 end
