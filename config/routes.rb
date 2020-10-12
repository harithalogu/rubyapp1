Rails.application.routes.draw do
resources :employees

#get 'employees/new', to: 'employees#new'

root "employee#index"

 get 'employee/createemployee'
 get 'employee/viewemployeedetails'
 
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
