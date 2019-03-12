class Persona
	def initialize el_nombre
	 @nombre = el_nombre 
	end
	def saludo hora
	    if hora < 12
         	 return "Hola, Mundo. Mi nombre es #{@nombre}"
	    elsif hora < 20
	        return "Buenas tardes"
	    else
		 return "Buenas Noches".
	    end
	end
end
