class DepartmentsController < ApplicationController
    def show
        department_name = params[:name].gsub("-", " ").titleize
        @department = Department.find_by(name: department_name)
        
        # binding.pry
        if @department
          @employee_count = @department.employees.count
        else
          flash[:error] = "Department not found"
          redirect_to bills_path
        end
      end
      
  end
  