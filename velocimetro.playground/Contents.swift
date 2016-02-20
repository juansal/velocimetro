//: Tarea: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades : Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    var velocidadActual : Int
    
    func cambioDeVelocidad () -> (actual : Int, velocidadEnCadena : String) {
        
        self.velocidadActual = self.velocidad.rawValue
        
        switch (self.velocidad) {
      
            case .apagado:
                self.velocidad = .velocidadBaja
                return (self.velocidadActual,"Apagado")
            
            case .velocidadBaja:
                self.velocidad = .velocidadMedia
                return (self.velocidadActual,"Velocidad baja")
            
            case .velocidadMedia:
                self.velocidad = .velocidadAlta
                return (self.velocidadActual,"Velocidad media")
            
            case .velocidadAlta:
                self.velocidad = .velocidadMedia
                return (self.velocidadActual,"Velocidad alta")
            
        }
    }
    
    
    init () {
        self.velocidad = .apagado
        self.velocidadActual = self.velocidad.rawValue
    }
    
}

var coche = Auto()

for var i = 0; i < 10; i++ {
    var result = coche.cambioDeVelocidad()
    print ("\(result.actual), \(result.velocidadEnCadena)")
}
