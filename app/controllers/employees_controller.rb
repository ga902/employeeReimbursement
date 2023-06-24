class EmployeesController < ApplicationController

    def create
        employee = Employee.new(employee_params)
        if employee.save
            redirect_to employees_path
        else
            render 'new'
        end
    end
    def index
        employees = Employee.all
        render 'employees'
    end
    def edit 
        
        employee = Employee.find(params[:id])
        
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

    private 

    def employee_params
        params.require(:employee).permit(:firstname,:lastname,:email,:designation, :department_id)
    end

end
