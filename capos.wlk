import artefactos.*
import lugares.*
import hechizos.*
object rolando {
    var poderBase = 5
    const artefactos = []
    var capacidad = 2
    var hogar = castillo
    const historialEncuentros = []

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




