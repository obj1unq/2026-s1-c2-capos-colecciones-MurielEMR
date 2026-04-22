import artefactos.*
import capos.*
import lugares.*

object bendicion {
    method poderAPersonaje(personaje){
        return 4
    }
}

object invisibilidad {
    method poderAPersonaje(personaje){
        return personaje.poderBase()
    }


}

object invocacion {
    method poderAPersonaje(personaje){
        return personaje.artefactoMasPoderosoDeSuMorada()
    }
}