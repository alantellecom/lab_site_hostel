Rails.application.routes.draw do

  
  root 'site_hostel#Home'
  
  resources :meetings
  get 'site_hostel/Home'
  get 'site_hostel/Fotos'
  get 'site_hostel/saiba_mais'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
