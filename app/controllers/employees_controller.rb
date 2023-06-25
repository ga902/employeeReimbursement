class EmployeesController < ApplicationController

    
    def new
        @employee =Employee.new()
        render 'new'
    end
    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employees_path
        else
            render 'new'
        end
    end
    def index
        @employees = Employee.all
        render 'index'
    end
    def edit 
        
        @employee = Employee.find(params[:id])
        
        render 'edit'
       
    end
    def update 
        employee = Employee.find(params[:id])
        if employee.update(employee_params)
            redirect_to employees_path
        else
            render 'edit'
        end
    end
    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end
            
    private 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :designation, :department_id)
      end
      

end
