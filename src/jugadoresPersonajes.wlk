object luisa {
    var personajeActivo = "nada"
    
    method asignarFloki() {personajeActivo = floki}
    method asignarMario() {personajeActivo = mario}
    method aparece(elemento) {
    	personajeActivo.encontrar(elemento)
    }
}


object floki {
    var arma = ballesta
    
    method seleccionarArma(nuevaArma) {arma = nuevaArma}
    method encontrar(elemento){
   	 	if (arma.estaCargada()) {
   		 	arma.usar()
   		 	elemento.recibirAtake(arma.potencia())
   		}
    }
}


object mario {
    var valorRecolectado = 0
    var esFeliz = false
    
    method encontrar(elemento){
   	 	valorRecolectado = valorRecolectado + elemento.valor()
   		elemento.recibirTrabajo()
   		if (valorRecolectado >= 50 or elemento.altura() >= 10)
   			esFeliz = true
    }
    method marioEsFeliz() {return esFeliz}
    method recolectado() {return valorRecolectado}
}


object ballesta {
    var cargada = true
    var flechas = 10
    
    method estaCargada() {return cargada}
    method potencia() {return 4}
    method flechasRestantes() {return flechas}
    method usar() {
   	 	flechas = flechas - 1
   	 	if (flechas <= 0)
   		 	cargada = false
    }
}


object javalina {
    var cargada = true
    
    method estaCargada() {return cargada}
    method potencia() {return 30}
    method usar() {cargada = false}
}


object castillo {
    var defensa = 150
    
    method altura() {return 20}
    method defensa() {return defensa}
    method recibirAtake(atake) {defensa = defensa - atake}
    method valor() {return defensa / 5}
    method recibirTrabajo() {
   	 	if (defensa > 180)
   		 	defensa = 200
   	 	else
   		 	defensa = defensa + 20
    }
}


object aurora {
    var estaViva = true
    
    method altura(){return 1}
    method vive() {return estaViva}
    method recibirAtake(atake) {
   	 	if (atake >= 10)
   		 	estaViva = false
    }
    method valor() {return 15}
    method recibirTrabajo() {}
}


object tipa {
    var altura = 8
    
    method altura(){return altura}
    method recibirAtake(atake) {}
    method valor() {return altura * 2}
    method recibirTrabajo() {altura = altura + 1}
}
