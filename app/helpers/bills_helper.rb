module BillsHelper

    def get_bill_amt
        @bill = Bill.find(params[:id])
        return @bill
    end
end
