class BillsController < ApplicationController
    def index
      @bills = Bill.all
      render 'index'
    end
  
    def new
      @bill = Bill.new
      @allowance_types = ['Travel', 'Food', 'Lodging', 'Transportation', 'Entertainment', 'Office Supplies', 'Training', 'Equipment', 'Maintenance', 'Communication','other']
    end
  
    def create
      @bill = Bill.new(bill_params)
      if @bill.save
        redirect_to bills_path
      else
        render 'new'
      end
    end
  
    def edit
      @bill = Bill.find(params[:id])
    end
  
    def update
      @bill = Bill.find(params[:id])
      if @bill.update(bill_params)
        redirect_to bills_path
      else
        render 'edit'
      end
    end
  
    def destroy
      @bill = Bill.find(params[:id])
      @bill.destroy
      redirect_to bills_path
    end
  
    private
  
    def bill_params
      params.require(:bill).permit(:type, :amount, :employee_id)
    end
  end
  