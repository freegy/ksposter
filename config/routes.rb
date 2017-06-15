Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  post 'home/create'
  get 'home/write'
  get 'home/destroy'
  get 'home/edit'
  post 'home/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
