object nabucodonosor{
  var pasajeros = #{}
  method cantidadDePasajeros() = pasajeros.size()

  method pasajeroMasVital() = pasajeros.max({p => p.vitalidad()})

  method pasajeroMenosVital() = pasajeros.min({p => p.vitalidad()})

  method estaEquilibradoEnVitalidad() { 
    return (self.pasajeroMasVital().vitalidad() > self.pasajeroMenosVital().vitalidad()*2   )
    }

  method elegidoEnLaNave() = pasajeros.any({p => p.esElegido()})

  method subirA(unPasajero){
    pasajeros.add(unPasajero)
  }

  method bajarA(unPasajero){
    pasajeros.remove(unPasajero)
  }

  method chocar(){
    pasajeros.forEach({p => p.saltar() })
    pasajeros.clear()
  }

  method acelerar(){
  pasajeros.filter({p => not p.esElegido()}).forEach({p => p.saltar() })

  }
}

object neo {
  var energia = 100
  var vitalidad = energia * 0.1
  method vitalidad() = vitalidad
  method esElElegido() = true
  method saltar(){
    energia *= 0.5
  }
}

object morfeo {
  var vitalidad = 8
  var estaCansado = false

  method vitalidad() = vitalidad
  method estaCansado() = estaCansado
  method esElElegido() = false
  method saltar(){
    estaCansado = !estaCansado
    vitalidad = 0.max(vitalidad-1)
  }
}

object trinity {
  method vitalidad() = 0
  method esElElegido() = false
  method saltar(){}

}