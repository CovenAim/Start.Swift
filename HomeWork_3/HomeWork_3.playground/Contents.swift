import UIKit

enum engineStatus {
    case start
    case stop
}

enum Windows {
    case open
    case close
}

enum trunkState {
    case full
    case empty
}

struct SportCar {
    let model : String
    var tires : String
    var speed : Int

    mutating func changeTires(_ c:String) {
            switch c {
            case "white":
                self.tires = "winter"
            case "black":
                self.tires = "summer"
            case "red":
                self.tires = "sportType"

            default:
                print("Input error.")
            }
        }

     func description1() -> () {
           print("Модель \(self.model). Год выпуска \(self.release). Развивает скорость \(self.speed) км/ч. Окна \(self.Windows). Двигатель \(self.engineStatus). Багажник \(self.trunkState). ")
    }

    let release : Int
        var trunkVolume : Double {
            willSet {
                if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                    let space = trunkVolume - newValue
                    print ("\(model) багажник пуст: \(space)")
                } else { print("Input error or \(model) багажник заполнен.")}
            }
        }
    var engineStatus : engineStatus {
            willSet {
                if newValue == .start {
                    print ("\(model) двигатель заведен")
                } else {print("\(model) двигатель заглушен")}
            }
        }
        var Windows : Windows {
            willSet {
                if newValue == .open {
                    print("\(model) окна открыты")
                } else { print("\(model) окна закрыты") }
            }
        }
    var trunkState : trunkState
        mutating func emptyTrunck() {
            self.trunkState = .empty
            print ("\(model) багажник пуст")
        }
    }
var SportCar1 = SportCar (model: "Tesla", tires: "sportType", speed: 300, release: 2019, trunkVolume: 320.0, engineStatus: .start, Windows: .close, trunkState: .empty)

//SportCar.description1

SportCar1.engineStatus = .stop
SportCar1.trunkVolume = 260.0
SportCar1.changeTires("winter")





enum engineStatus {
    case start
    case stop
}

enum Windows {
    case open
    case close
}

enum trunkState {
    case full
    case empty
}

struct TruckCar {
    let model : String
    var tires : String
    var speed : Int
    
    mutating func changeTires(_ c:String) {
            switch c {
            case "white":
                self.tires = "winter"
            case "black":
                self.tires = "summer"
            case "red":
                self.tires = "TrunkType"
           
            default:
                print("Input error.")
            }
        }
    
     func description1() -> () {
           print("Модель \(self.model). Год выпуска \(self.release). Развивает скорость \(self.speed) км/ч. Окна \(self.Windows). Двигатель \(self.engineStatus). Багажник \(self.trunkState). ")
    }
    
    let release : Int
        var trunkVolume : Double {
            willSet {
                if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                    let space = trunkVolume - newValue
                    print ("\(model) багажник пуст: \(space)")
                } else { print("Input error or \(model) багажник заполнен.")}
            }
        }
    var engineStatus : engineStatus {
            willSet {
                if newValue == .start {
                    print ("\(model) двигатель заведен")
                } else {print("\(model) двигатель заглушен")}
            }
        }
        var Windows : Windows {
            willSet {
                if newValue == .open {
                    print("\(model) окна открыты")
                } else { print("\(model) окна закрыты") }
            }
        }
    var trunkState : trunkState
        mutating func emptyTrunck() {
            self.trunkState = .empty
            print ("\(model) багажник пуст")
        }
    }
var TruckCar1 = TruckCar (model: "Gaz", tires: "summer", speed: 90, release: 1980, trunkVolume: 1800.0, engineStatus: .stop, Windows: .open, trunkState: .full)

//TruckCar.description1

TruckCar1.engineStatus = .start
TruckCar1.trunkVolume = 1600.0
TruckCar1.changeTires("TrunkType")

