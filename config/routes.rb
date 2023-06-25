Rails.application.routes.draw do
  
  resources :departments
  delete '/employees/:id', to: 'employees#destroy', as: 'delete_employee'
  resources :employees
  resources :bills

end
