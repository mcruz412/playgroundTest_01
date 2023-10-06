import UIKit

struct VehicleInformation {
    let make: String
    let model: String
    let year: Int
    let licensePlate: String
}

enum DriveTrain: String {
    case rwd = "Rear-Wheel Drive"
    case fwd = "Front-Wheel Drive"
    case fourwd = "Four-Wheel Drive"
    case awd = "All-Wheel Drive"
}

struct Vehicle {
    let information: VehicleInformation
    let driveTrain: DriveTrain
    
    func vehicleOpinion() -> String {
        switch driveTrain {
        case .awd: return ("Ohhh, you have a \(information.model). That's an \(DriveTrain.awd.rawValue), so you can go off-roading with it!")
        case .rwd: return("If you want fast car, a \(DriveTrain.rwd.rawValue) is what you want. So you'll have fun with your \(information.model) on the road.")
        case .fourwd: return("You have \(information.model)?! Pack your bags. We're going to Moab with that \(DriveTrain.fourwd.rawValue) vehicle of yours!")
        default: return("That \(information.model) of yours is a good city or road-trip vehicle. That's about it with a \(DriveTrain.fwd.rawValue).")
        }
    }
}

let myVehicles = [
    Vehicle(information: .init(make: "Toyota", model: "4 Runner", year: 2014, licensePlate: "55AA22"), driveTrain: .awd),
    Vehicle(information: .init(make: "Toyota", model: "Corolla", year: 2021, licensePlate: "ABC1EFG"), driveTrain: .fwd),
    Vehicle(information: .init(make: "Toyota", model: "LandCruiser", year: 2023, licensePlate: "GR4NDM01"), driveTrain: .awd),
    Vehicle(information: .init(make: "Subaru", model: "DeForester", year: 2021, licensePlate: "YG3YBXD"), driveTrain: .awd),
    Vehicle(information: .init(make: "Honda", model: "Integra", year: 2006, licensePlate: "AXW12ED"), driveTrain: .fwd),
    Vehicle(information: .init(make: "Chrysler", model: "Pacifica", year: 2021, licensePlate: "12LED9P"), driveTrain: .fwd),
    Vehicle(information: .init(make: "Subaru", model: "BRZ", year: 2019, licensePlate: "BRZ110LD"), driveTrain: .rwd),
    Vehicle(information: .init(make: "Kia", model: "Stinger", year: 2022, licensePlate: "K1A4MWX"), driveTrain: .rwd),
    Vehicle(information: .init(make: "Chevrolet", model: "Colorado", year: 2023, licensePlate: "C0L4VK"), driveTrain: .fourwd),
    Vehicle(information: .init(make: "GMC", model: "Canyon", year: 2018, licensePlate: "XMH01D6"), driveTrain: .fourwd)
]

let shuffledVehicles = myVehicles.shuffled()

for vehicle in shuffledVehicles {
    print(vehicle.vehicleOpinion())
}


//print out each car nicely. and print out a sentence for each line
