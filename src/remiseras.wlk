import clientas.*


object roxana {
	
	
	method precioViaje(clienta,kilometros){
		return clienta.precioPorKilometro() * kilometros
	}
	
}

object gabriela {
	
	method precioViaje(clienta,kilometros){
		return clienta.precioPorKilometro() * kilometros * 1.2
		
		
	}
}

object mariela {
	
	method precioViaje(clienta,kilometros){
		
		return 50.max(clienta.precioPorKilometro() * kilometros)
		
	}	
	
}

object juana {
	
	method precioViaje(clienta,kilometros){
		if(kilometros <= 8){
			return 100
		}else{
			return 200
		}
		
	}	
}




object lucia {
	var  estaReemplazando
	
	method estaReemplazando() = estaReemplazando
	
	method estaReemplazando(remisera){
		if(self == remisera){
			self.error("No se puede reemplazar a si misma")
		}
		estaReemplazando = remisera
	} 
	
	
	method precioViaje(clienta, kilometros){
		 return estaReemplazando.precioViaje(clienta, kilometros)
	}
}









