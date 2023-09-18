import UIKit

struct VehicleInformation {
    let Make: String
    let Model: String
    let Year: Int
    let LicensePlate: String
}

enum DriveTrain {
    case rearWheelDrive
    case frontWheelDrive
    case fourWheelDrive
    case allWheelDrive
    //case awd = "All-Wheel Drive"
}

struct Vehicle {
    let information: VehicleInformation
    let driveTrain: DriveTrain
}


let fourRunner = Vehicle(information: .init(Make: "Toyota", Model: "4 Runner", Year: 2014, LicensePlate: "55AA22"), driveTrain: .allWheelDrive)

let corolla = Vehicle(information: .init(Make: "Toyota", Model: "Corolla", Year: 2021, LicensePlate: "ABC1EFG"), driveTrain: .frontWheelDrive)

//let landCruiser = Vehicle(information: .init(Make: "Toyota", Model: "LandCruiser", Year: 2023, LicensePlate: "GR4NDM01"), driveTrain: .awd)
//
//let deForester = Vehicle(information: .init(Make: "Subaru", Model: "DeForester", Year: 2021, LicensePlate: "YG3YBXD"), driveTrain: .awd)

let carArray = [fourRunner, corolla]

print(carArray)

