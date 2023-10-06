import UIKit

struct VehicleInformation {
    let Make: String
    let Model: String
    let Year: Int
    let LicensePlate: String
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
    
    func vehicleOpinion() {
        switch driveTrain {
        case .awd: print("Ohhh, you have a \(information.Model). That's an \(DriveTrain.awd.rawValue), so you can go off-roading with it!")
        case .rwd: print("If you want fast car, a \(DriveTrain.rwd.rawValue) is what you want. So you'll have fun with your \(information.Model) on the road.")
        case .fourwd: print("You have \(information.Model)?! Pack your bags. We're going to Moab with that \(DriveTrain.fourwd.rawValue) vehicle of yours!")
        default: print("That \(information.Model) of yours is a good city or road-trip vehicle. That's about it with a \(DriveTrain.fwd.rawValue).")
        }
    }
}

let myVehicles = [
    Vehicle(information: .init(Make: "Toyota", Model: "4 Runner", Year: 2014, LicensePlate: "55AA22"), driveTrain: .awd),
    Vehicle(information: .init(Make: "Toyota", Model: "Corolla", Year: 2021, LicensePlate: "ABC1EFG"), driveTrain: .fwd),
    Vehicle(information: .init(Make: "Toyota", Model: "LandCruiser", Year: 2023, LicensePlate: "GR4NDM01"), driveTrain: .awd),
    Vehicle(information: .init(Make: "Subaru", Model: "DeForester", Year: 2021, LicensePlate: "YG3YBXD"), driveTrain: .awd),
    Vehicle(information: .init(Make: "Honda", Model: "Integra", Year: 2006, LicensePlate: "AXW12ED"), driveTrain: .fwd),
    Vehicle(information: .init(Make: "Chrysler", Model: "Pacifica", Year: 2021, LicensePlate: "12LED9P"), driveTrain: .fwd),
    Vehicle(information: .init(Make: "Subaru", Model: "BRZ", Year: 2019, LicensePlate: "BRZ110LD"), driveTrain: .rwd),
    Vehicle(information: .init(Make: "Kia", Model: "Stinger", Year: 2022, LicensePlate: "K1A4MWX"), driveTrain: .rwd),
    Vehicle(information: .init(Make: "Chevrolet", Model: "Colorado", Year: 2023, LicensePlate: "C0L4VK"), driveTrain: .fourwd),
    Vehicle(information: .init(Make: "GMC", Model: "Canyon", Year: 2018, LicensePlate: "XMH01D6"), driveTrain: .fourwd)
]

let shuffledVehicles = myVehicles.shuffled()

for vehicle in shuffledVehicles {
    vehicle.vehicleOpinion()
}


//print out each car nicely. and print out a sentence for each line
