import artefactos.*
import lugares.*
object rolando {
    var poderDePelea = 0
    const mochila = []
    var capacidad = 2
    var hogar = castillo
    const historialEncuentros = []

    method usarArtefacto(artefacto){
        artefacto.usarArtefacto()
    }
    method poderDePelea(_poderDePelea){
        poderDePelea = _poderDePelea
    }
    method poderDePelea(){
        return poderDePelea
    }
    method poderDePeleaTotal(){
        return self.poderDePelea() + poderArtefactos()
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

    method agregarAMochila(artefacto){

        historialEncuentros.add(artefacto)
        if(not (mochila.size() >= self.capacidad() || (self.tieneArtefacto(artefacto)))){
            mochila.add(artefacto)
        }
    }
    method llegarA(){
        hogar.depositarArtefactos(mochila)
        mochila.clear()
    }

    method todosSusArtefactos(){
        return mochila + hogar.inventario()
    }
    method tieneArtefacto(artefacto){
        return self.todosSusArtefactos().contains(artefacto)
    }

}




