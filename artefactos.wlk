import capos.*
import lugares.*
import hechizos.*
object espada{
    var uso = 0
    var dueño = null
    method usar(){
        uso =  uso + 1
    }
    method poder(){
        return if (uso == 0){
                dueño.poderBase()
        }else dueño.poderBase()*0.5
    }
    method dueño(){
        return dueño
    }
    method dueño(_dueño){
        dueño = _dueño
    }
    method esArtefactoFatalPara(enemigo){
        return self.poder() > enemigo.poder()


    }

}
object libro{
    var property uso = 0
    var property dueño = null
    const hechizos = []
    
    method usar(){
        if (hechizos.notEmpty()){
            hechizos.remove(hechizos.first())
        }
    }
    method poder(){
        if (hechizos.notEmpty()){
            return hechizos.first().poderAPersonaje(dueño)
        } else {
            return dueño.poder()
        }
    }

    method agregarHechizo(hechizo){
        if (not (hechizos.contain(hechizo))){
            hechizos.add(hechizo)
        }
    }
    method esArtefactoFatalPara(enemigo){
        return self.poder() > enemigo.poder()

    }

}
object collar{
    var property uso = 0
    var property dueño = null
    
    method poder(){
        return if (dueño.poderBase()>6){
            3 + uso
        }else {
            3
        }
    }
    method esArtefactoFatalPara(enemigo){

    }
}

object armadura{
    var property dueño = null
    var property uso = 0
    method poder(){
        return 6
    }
    method usar(){
        uso= uso +1
    }
    method esArtefactoFatalPara(enemigo){

    }
}
