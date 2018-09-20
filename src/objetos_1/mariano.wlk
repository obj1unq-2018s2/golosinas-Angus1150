import golosinas.*
object mariano {
	
	var bolsaGolosinas =[]

	method golosinas() {
		return bolsaGolosinas
	}
	
	method comprar(golosina) {
		bolsaGolosinas.add(golosina)
	}
	method desechar(golosina){
		bolsaGolosinas.remove(golosina)
	}
	
	method probarGolosinas() {
		bolsaGolosinas.forEach{golosina => golosina.mordisco()}
	}
	method hayGolosinaSinTACC(){
		return bolsaGolosinas.any({golosina=>golosina.libreGluten()})
	}
	method preciosCuidados(){
		return bolsaGolosinas.all({golosina=>golosina.precio()<=10})
	}
	method golosinaDeSabor(sabor){
		return bolsaGolosinas.find({golosina=>golosina.gusto()== sabor})
	}
	method golosinasDeSabor(sabor){
		return bolsaGolosinas.filter({golosina=>golosina.gusto()== sabor})
	}
	method golosinaMasCara(){
		return bolsaGolosinas.max({golosina=>golosina.precio()})
	}
	method pesoGolosinas(){
		return bolsaGolosinas.sum({golosina=>golosina.peso()})
	}
	method sabores(){
		return bolsaGolosinas.map({golosina=>golosina.gusto()}).asSet()
	}
	method golosinasFaltantes(golosinasDeseadas){
		golosinasDeseadas.asSet()
		bolsaGolosinas.asSet()
		return golosinasDeseadas.difference(bolsaGolosinas) 
	}
	method gustosFaltantes(gustosDeseados){
		gustosDeseados.asSet()
		return gustosDeseados.difference(self.sabores())
	}
}

