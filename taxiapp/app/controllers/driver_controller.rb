class DriverController < ApplicationController
    layout 'panel', except: [:login]
    before_action :set_driver, only: [:show, :edit, :update, :destroy]
  def index
        if logged_inDriver?
             redirect_to driver_panel_path
        else
        redirect_to driver_login_path
        end
  end
  
    def createSessionDriver
      @driver = Driver.find_by(email: params[:driver][:email].downcase)
      if @driver && @driver.authenticate(params[:driver][:password_digest])
      log_inDriver @driver
      redirect_to driver_panel_path
      else
      redirect_to driver_login_path
      end
    end 
    
    def destroySessionDriver
      log_outDriver
      redirect_to root_path
    end
  
  def new
    @driver = Driver.new
  end
  
  def show
  end
  
  def edit
    @movilities = Mobility.all()
  end
  
  def panel
  end
  
  def create
       @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to reservation_login_url, notice: 'Se grabó el chofer!!!' }
        
      else
        format.html { render :new }
        
      end
    end
  end
  
  def update
    respond_to do |format|
      if @driver.update(driver_params_upd)
        format.html { redirect_to driver_panel_path, notice: 'Profile was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to driver_url, notice: 'Profile was successfully destroyed.' }
      
    end
  end
  
   private
    # Use callbacks to share common setup or constraints between actions.
    def set_driver
      @driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def driver_params
      params.require(:driver).permit(:email, :name, :phone, :password)
    end
     def driver_params_upd
      params.require(:driver).permit(:email, :name, :phone, :nroIdentidad, :nroPlaca, :colorAuto, :marcaAuto, :modeloAuto, :mobility_id)
     end
end
