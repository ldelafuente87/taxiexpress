class CustomerController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  def index
  end
  def new
    @customer = Customer.new
  end
  
  def show
  end
  
  def edit
  end
  
  def create
       @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to reservation_login_url, notice: 'Se grabó el cliente!!!' }
        
      else
        format.html { render :new }
        
      end
    end
  end
  
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Profile was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customer_url, notice: 'Profile was successfully destroyed.' }
      
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:email, :name, :phone, :password)
    end
end
