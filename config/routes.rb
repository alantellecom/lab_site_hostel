Rails.application.routes.draw do
  
  root 'site_hostel#Home'

  get 'site_hostel/Home'
  get 'site_hostel/Fotos'
  get 'site_hostel/saiba_mais'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :sessions, only: [:new, :create, :destroy]
 
  resources :users
  
  resources :meetings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
