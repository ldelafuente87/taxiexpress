class ReservationController < ApplicationController
    layout 'panel', except: [:login]
    def index
        if logged_inCustomer?
             redirect_to reservation_panel_path
        else
        redirect_to reservation_login_path
        end
    end
    
    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.customer_id = current_customer.id
      @reservation.statu_id = 1
      @drivers = Driver.where(["mobility_id=?",params[:reservation][:mobility_id]]).first
      @reservation.driver_id = @drivers.id
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to reservation_resumen_path, notice: 'Se grabó el la solicitud!!!' }
        
      else
        format.html { render :new }
        
      end
    end
    end
    
    def resumen
    end
    
    def createSessionCustomer
      @customer = Customer.find_by(email: params[:customer][:email].downcase)
      if @customer && @customer.authenticate(params[:customer][:password_digest])
      log_inCustomer @customer
      redirect_to reservation_panel_path
      else
      redirect_to reservation_login_path
      end
    end 
    
    def destroySessionCustomer
      log_outCustomer
      destroyPrecio
      redirect_to root_path
    end
    
    def panel
      @rates = Rate.select(:origenRuta).uniq
      @movilities = Mobility.all()
      @payments = Paymentmethod.all()
    end
    
    def consultar
    @rate = Rate.find_by(origenRuta: params[:rate][:origenRuta],destinoRuta: params[:rate][:destinoRuta])    
    Precio @rate
     redirect_to reservation_panel_path
    end
    
     private
    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:driver_id,:customer_id,:paymentmethod_id,:rate_id,:statu_id)
    end
   
end
