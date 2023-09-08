import UIKit

struct VehicleInformation {
    let Make: String
    let Model: String
    let Year: Int
    let LicensePlate: String
}


struct Vehicle {
    let information: VehicleInformation
}

let fourRunner = Vehicle(information: .init(Make: "Toyota", Model: "4 Runner", Year: 2014, LicensePlate: "55AA22"))
