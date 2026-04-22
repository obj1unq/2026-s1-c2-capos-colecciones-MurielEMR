import capos.*
import artefactos.*
import hechizos.*

object castillo{
    const inventario =[]
    method depositarArtefactos(artefactos){
        inventario.addAll (artefactos)
    } 
    method inventario(){
        return inventario
    }
}