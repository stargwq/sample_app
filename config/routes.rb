Rails.application.routes.draw do
  get 'room/show'

  get 'room/index'

  mount ActionCable.server => '/cable'

  root "static_pages#home"
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'rooms/show'
end
