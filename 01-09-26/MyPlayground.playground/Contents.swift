func introduceMyself(){
    print("Hola, soy Tona")
}

introduceMyself()

import Foundation

func magicEightBall(){
    let randomNum = Int.random(in: 0...4)
    
    switch randomNum{
    case 0:
        print("No lo creo")
    case 1:
        print("Srry, pregunta otra vez")
    case 2:
        print("Absolutamente")
    case 3:
        print("En tu caso? Ni un chance")
    default:
        print("Se ve bien")
    }
}

magicEightBall()
