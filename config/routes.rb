Rails.application.routes.draw do
  
  get 'notifications/index'

  get 'notifications/show'

  get 'notifications/new'

  get 'notifications/create'

  get 'notifications/edit'

  get 'notifications/update'

  get 'notifications/destroy'

  get 'uploads/index'

  get 'uploads/show'

  get 'uploads/new'

  get 'uploads/create'

  get 'uploads/edit'

  get 'uploads/update'

  get 'uploads/destroy'

  get 'courses/index'

  get 'courses/show'

  get 'courses/new'

  get 'courses/create'

  get 'courses/edit'

  get 'courses/update'

  get 'courses/destroy'

  devise_for :users
  resources :subjects

  root "subjects#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
