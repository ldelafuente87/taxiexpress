module RateHelper
    def Precio(rate)
        session[:precio_id] = rate.id
    end
    
    def mostrarPrecio
        @mostrarPrecio ||= Rate.find_by(id: session[:precio_id])
    end
    
    def destroyPrecio
        session.delete(:precio_id)
         @mostrarPrecio = nil
    end
    
end
