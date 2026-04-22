import enemigos.*
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
    method artefactoMasPoderoso(){
        inventario.maxIfEmpty({artefacto => artefacto.poder()})
    }
}

object fortalezaDeAcero{
    var property dueño = caterina

}

object palacioDeMarmol{
    var property dueño = archibaldo 
    
}

object torreDeMarfil{
    var property dueño= astra

}