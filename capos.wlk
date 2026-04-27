import artefactos.*
import lugares.*
import hechizos.*
import enemigos.*
object rolando {
    var poderBase = 5
    const artefactos = []
    var capacidad = 2
    var hogar = castillo
    const historialEncuentros = []
    const enemigos =#{caterina,archibaldo,astra}

/*Tener todas las moradas
quiero las moradas que pueda vencer al dueño
quiero que me devuelva las moradas
*/
    method tieneArtefactoFatal(enemigo){
        return artefactos.any({artefacto => self.esArtefactoFatal(artefacto,enemigo)})
    }
    
    method esArtefactoFatal(artefacto,enemigo){
        return artefacto.poder() > enemigo.poder()
    }
    method esPoderoso(){
        return enemigos.all({e => self.puedeVencerEnemigo(e)})
    }
    method puedeVencerEnemigo(enemigo){
        return self.poderDePeleaTotal() > enemigo.poder()
    }
    method enemigos(){
        return enemigos
    }
    method enemigos(_enemigos){
        enemigos.add(_enemigos)

    }
    method moradasQuePuedeConquistar(){
        return self.enemigosQuePuedeVencer().map({e => e.hogar()})
    }

    method enemigosQuePuedeVencer(){
        return enemigos.filter({e => self.poderDePeleaTotal() > e.poder()})
    }
    method artefactoMasPoderosoDeLaMorada(){
        return hogar.artefactoMasPoderoso()
    }
    method batallar(){
        artefactos.forEach({artefacto=>artefacto.usar()})
        self.poderBase(poderBase+1)
    }
    method usarArtefacto(artefacto){
        if (self.tieneArtefacto(artefacto)){
            artefacto.usar()
        }
    }
    method poderBase(_poderBase){
        poderBase = _poderBase
    }
    method poderBase(){
        return poderBase
    }
    method poderDePeleaTotal(){
        return self.poderBase() + self.poderArtefactos()
    }
    method poderArtefactos(){
        return artefactos.sum({ artefacto => artefacto.poder() })

    }
    method hogar(){
        return hogar
    }
    method hogar(_hogar){
        hogar = _hogar
    }
    method historialEncuentro(){
        return historialEncuentros
    }

    method capacidad(){
        return capacidad
    }
    method aumentarCapacidad(){
        capacidad= capacidad + 1
    }

    method agregarArtefacto(artefacto){

        historialEncuentros.add(artefacto)
        if(not (artefactos.size() >= self.capacidad() || (self.tieneArtefacto(artefacto)))){
            artefactos.add(artefacto)
            artefacto.dueño(self)
        }
    }
    method llegarA(){
        hogar.depositarArtefactos(artefactos)
        artefactos.clear()
    }

    method todosSusArtefactos(){
        return artefactos + hogar.inventario()
    }
    method tieneArtefacto(artefacto){
        return self.todosSusArtefactos().contains(artefacto)
    }

}




