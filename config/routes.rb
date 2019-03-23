Rails.application.routes.draw do

  root 'site_hostel#Home'
  get 'site_hostel/Home'
  get 'site_hostel/Agenda'
  get 'site_hostel/Fotos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
