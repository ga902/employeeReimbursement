Rails.application.routes.draw do
  get '/departments/:name', to: 'departments#show', as: 'department'
  resources :departments
  delete '/employees/:id', to: 'employees#destroy', as: 'delete_employee'
  resources :employees
  resources :bills
 

end
