import UIKit

struct VehicleInformation {
    let Make: String
    let Model: String
    let Year: Int
    let LicensePlate: String
}

enum DriveTrain {
    case rwd = "Rear-Wheel Drive"
    case fwd = "Front-Wheel Drive"
    case fourwd = "Four-Wheel Drive"
    case awd = "All-Wheel Drive"
}

struct Vehicle {
    let information: VehicleInformation
    let driveTrain: DriveTrain
}

let fourRunner = Vehicle(information: .init(Make: "Toyota", Model: "4 Runner", Year: 2014, LicensePlate: "55AA22", driveTrain: .awd))


