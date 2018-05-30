class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def show
    @customer = Customer.find(params[:id])
  end
  
  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def create
    @customer = Customer.new(customer_params)
 
    if @customer.save
      redirect_to @customer #redirect to show action, could be any other message...
    else
      render 'new'
    end
  end
  
  def update
      @customer = Customer.find(params[:id])
 
      if @customer.update(customer_params)
        redirect_to @customer
      else
        render 'edit'
      end
  end
    
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
 
    redirect_to customers_path
  end
    
  # editable fields
  private
    def customer_params
      params.require(:customer).permit(:custno, :custname, :address, :internal, :contact, :phone, :city, :state, :zip)
    end
end
