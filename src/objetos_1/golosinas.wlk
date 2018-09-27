object bombon {
	var peso = 15
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso * 0.8 - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}
}

object alfajor {
	var peso = 300
	
	method precio() { 
		return 12
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso * 0.8
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}	
}

object caramelo {
	var peso = 5
	
	method precio() { 
		return 1
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		peso = peso - 1
	}
	method gusto() { 
		return "frutilla"
	}
	method libreGluten() { 
		return true
	}
}

object chupetin {
	var peso = 7
	
	method precio() { 
		return 2
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		if(self.peso()>2){
		peso = peso * 0.9
		}
	}
	method gusto() { 
		return "naranja"
	}
	method libreGluten() { 
		return true
	}
}

object oblea {
	var peso = 250
	
	method precio() { 
		return 5
	}
	method peso() { 
		return peso
	}
	method mordisco() { 
		if(self.peso()>70){
			peso= peso *0.5
		}else{
			peso = peso *0.75
		}
		 
	}
	method gusto() { 
		return "vainilla"
	}
	method libreGluten() { 
		return false
	}
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial = 0
	var pesoActual = 0
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	
	method precio() { 
		return 0.5 * pesoInicial
	}
	method peso() { 
		return pesoActual
	}
	method mordisco() { 
		pesoActual = pesoActual - 2
	}
	method gusto() { 
		return "chocolate"
	}
	method libreGluten() { 
		return false
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
    var property precioBanio= 2
	method baniaA(unaGolosina) { 
		golosinaInterior = unaGolosina
	}
	method precio() { 
		return golosinaInterior.precio()+self.precioBanio()  
	}
	method peso() { 
	   return golosinaInterior.peso()+pesoBanio 
	}
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { 
			pesoBanio -= 2
		} 
	}	
	method gusto() { 
	  return golosinaInterior.gusto()
	}
	method libreGluten() {
	  return golosinaInterior.libreGluten()
	}	
}

// OJO, aca esta resolucion funciona solo para 3 sabores.
// si el dia de mañana tuviera 10 sabores tenes que "calibrar"
// el contador de mordiscos para acceder al sabor.
// pensa en como podes hacer una rotar la lista y no tanto en
// como acceder a ella.
object tuttifrutti {
	var property libreGluten
	var contadorMordiscos =0
	var precio = 10
	var gustosPosibles= ["frutilla", "chocolate", "naranja"]
	const property peso =5	
	method precio(){
		if(libreGluten){
			precio=7	
		}
		return precio
	}
	/*mordisco hace un contador de cantidad de mordidas y gusto
	accede a al gusto con el contador como indice. Sin morderlo el sabor es frutilla.*/
	method gusto(){
		return gustosPosibles.get(contadorMordiscos)
	}

	
	method mordisco(){
		if(contadorMordiscos<2){
		 contadorMordiscos+=1
	    }else{
	    	contadorMordiscos=0
	    }
	  }
}

