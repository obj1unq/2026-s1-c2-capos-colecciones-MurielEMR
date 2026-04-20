import capos.*
import artefactos.*

object castillo{
    const inventario =[]
    method depositarArtefactos(artefactos){
        inventario.addAll (artefactos)
    } 
    method inventario(){
        return inventario
    }
}