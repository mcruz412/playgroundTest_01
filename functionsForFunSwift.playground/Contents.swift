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
}


let fourRunner = Vehicle(information: .init(Make: "Toyota", Model: "4 Runner", Year: 2014, LicensePlate: "55AA22"), driveTrain: .awd)

let corolla = Vehicle(information: .init(Make: "Toyota", Model: "Corolla", Year: 2021, LicensePlate: "ABC1EFG"), driveTrain: .fwd)

let landCruiser = Vehicle(information: .init(Make: "Toyota", Model: "LandCruiser", Year: 2023, LicensePlate: "GR4NDM01"), driveTrain: .awd)

let deForester = Vehicle(information: .init(Make: "Subaru", Model: "DeForester", Year: 2021, LicensePlate: "YG3YBXD"), driveTrain: .awd)

let integra = Vehicle(information: .init(Make: "Honda", Model: "Integra", Year: 2006, LicensePlate: "AXW12ED"), driveTrain: .fwd)

let pacifica = Vehicle(information: .init(Make: "Chrysler", Model: "Pacifica", Year: 2021, LicensePlate: "12LED9P"), driveTrain: .fwd)

let brz = Vehicle(information: .init(Make: "Subaru", Model: "BRZ", Year: 2019, LicensePlate: "BRZ110LD"), driveTrain: .rwd)

let stinger = Vehicle(information: .init(Make: "Kia", Model: "Stinger", Year: 2022, LicensePlate: "K1A4MWX"), driveTrain: .rwd)

let colorado = Vehicle(information: .init(Make: "Chevrolet", Model: "Colorado", Year: 2023, LicensePlate: "C0L4VK"), driveTrain: .fourwd)

let canyon = Vehicle(information: .init(Make: "GMC", Model: "Canyon", Year: 2018, LicensePlate: "XMH01D6"), driveTrain: .fourwd)

let carArray = [fourRunner, corolla, landCruiser, deForester, integra, pacifica, brz, stinger, colorado, canyon]

for _ in carArray {
    print(carArray)
}

