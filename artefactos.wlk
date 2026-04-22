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

}
object libro{
    var property uso = 0
    var property dueño = null
    var hechizos = []

    method usarHechizo(){
        return if (hechizos.notEmpty()){
                hechizos.first().poderAporte()
                hechizos.remove(hechizos.first())
                }
                else 0
    }

    method agregarHechizo(hechizo){
        if (not (hechizos.contain(hechizo))){
            hechizos.add(hechizo)
        }
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
}
