module ReservationHelper
    def Resumen(reservation)
        session[:reservation_id] = reservation.id
    end
    
    def mostrarResumen
        @mostrarResumen ||= Reservation.find_by(id: session[:reservation_id])
    end
    
    def eliminarResumen
        session.delete(:reservation_id)
         @mostrarResumen = nil
    end
end
