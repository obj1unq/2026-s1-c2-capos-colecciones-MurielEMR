import artefactos.*
import lugares.*
object rolando {
    const mochila = []
    var capacidad = 2

    method capacidad(){
        return capacidad
    }
    method aumentarCapacidad(){
        capacidad= capacidad + 1
    }

    method agregarAMochila(artefacto){

        self.verificarMochila() 
        mochila.add(artefacto)
        
    }
    method verificarMochila(){
        if (mochila.size() >= self.capacidad()){
         self.error("Maximo de 2 por mochila chiki")
        }
    }
    method irAlCastillo(){
        castillo.depositarArtefactos(mochila)
        mochila.clear()
    }

    method todosSusArtefactos(){
        return mochila ++ castillo.inventario()
    }
    method tieneArtefactoLlamado(nombre){
        mochila.any({artefacto => artefacto.nombre()==nombre})
    }
}