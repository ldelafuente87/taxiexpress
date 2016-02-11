module SessionsHelper
    #Sesion Cliente
    def log_inCustomer(customer)
    session[:customer_id] = customer.id
    end
    def current_customer
    @current_customer ||= Customer.find_by(id: session[:customer_id])
    end
    def logged_inCustomer?
    !current_customer.nil?
    end
    def log_outCustomer
    session.delete(:customer_id)
    @current_customer = nil
    end
    #Sesion Chofer
    def log_inDriver(driver)
    session[:driver_id] = driver.id
    end
    def current_driver
    @current_driver ||= Driver.find_by(id: session[:driver_id])
    end
    def logged_inDriver?
   !current_driver.nil?
    end
    def log_outDriver
    session.delete(:driver_id)
    @current_driver = nil
    end
end
