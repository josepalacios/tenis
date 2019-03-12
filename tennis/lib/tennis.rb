class Tennis
    def initialize
        @jugador1 = 0
        @jugador2 = 0
    end

    def jugador1
        @jugador1
    end
    
    def jugador2
        @jugador2
    end
    
    def mostrar_puntaje 
        if @jugador1 == @jugador2
            return "#{@jugador1} iguales"
        else
            return "#{@jugador1} - #{@jugador2}"
        end
    end
    
    
    def anotar jugador
        if jugador == "jugador1"
            if @jugador1 == 30
               @jugador1 += 10                
            else
               @jugador1 += 15
            end
        else
            if @jugador2 == 30
               @jugador2 += 10                
            else
               @jugador2 += 15
            end
        end
    end
end
