import remiseras.*

object ludmila {
	
	method precioPorKilometro() = 18
	
}

object anaMaria {
	var estaEstable = true
	
	method estaEstable() = estaEstable
	
	method cambiarSituacionEconomica(){
		estaEstable = !estaEstable
	}
	
	
	method precioPorKilometro()= if(estaEstable){30}else{25}	
	
}



object teresa {
	
	var precioPorKilometro = 22 
	
    method precioPorKilometro() = precioPorKilometro	
    method precioPorKilometro(nuevoPrecio){
    	precioPorKilometro = nuevoPrecio
    }
	
}



object melina {
	var trabajaPara
	
	method trabajaPara() = trabajaPara
	method trabajaPara(clienta){
		if(self == clienta){
			self.error("Error en trabajaPara")
		}
		trabajaPara = clienta
	}
	
	method precioPorKilometro(){
		return trabajaPara.precioPorKilometro() - 3
	}
}







