import Foundation

struct Seat {
    let row: Int
    let position: Position
    let classType: ClassType
    var booked = false

    var name: String {
        return "\(row)\(position.name)"
    }

    var id: String {
        return "\(classType.rawValue.capitalized): \(name)"
    }

    enum ClassType: String {
        case business
        case coach
    }
}

enum SeatPlacement {
    case aisle
    case center
    case window
}

enum Side {
    case left
    case right
}


struct Position {
    let side: Side
    let placement: SeatPlacement

    var name: String {
        switch side {
        case .right:
            switch placement {
            case .aisle: return "A"
            case .center: return "B"
            case .window: return "C"
            }
        case .left:
            switch placement {
            case .aisle: return "D"
            case .center: return "E"
            case .window: return "F"
            }
        }
    }
}

extension Position {
    static let aPosition = Position(side: .right, placement: .aisle)
    static let bPosition = Position(side: .right, placement: .center)
    static let cPosition = Position(side: .right, placement: .window)
    static let dPosition = Position(side: .left, placement: .aisle)
    static let ePosition = Position(side: .left, placement: .center)
    static let fPosition = Position(side: .left, placement: .window)
}


extension Seat {
    static let seat1A = Seat(row: 1, position: .aPosition, classType: .business)
    static let seat1B = Seat(row: 1, position: .bPosition, classType: .business)
    static let seat1C = Seat(row: 1, position: .cPosition, classType: .business)
    static let seat1D = Seat(row: 1, position: .dPosition, classType: .business)
    static let seat1E = Seat(row: 1, position: .ePosition, classType: .business)
    static let seat1F = Seat(row: 1, position: .fPosition, classType: .business)

    static let seat2A = Seat(row: 2, position: .aPosition, classType: .business)
    static let seat2B = Seat(row: 2, position: .bPosition, classType: .business)
    static let seat2C = Seat(row: 2, position: .cPosition, classType: .business)
    static let seat2D = Seat(row: 2, position: .dPosition, classType: .business)
    static let seat2E = Seat(row: 2, position: .ePosition, classType: .business)
    static let seat2F = Seat(row: 2, position: .fPosition, classType: .business)

    static let seat3A = Seat(row: 3, position: .aPosition, classType: .business)
    static let seat3B = Seat(row: 3, position: .bPosition, classType: .business)
    static let seat3C = Seat(row: 3, position: .cPosition, classType: .business)
    static let seat3D = Seat(row: 3, position: .dPosition, classType: .business)
    static let seat3E = Seat(row: 3, position: .ePosition, classType: .business)
    static let seat3F = Seat(row: 3, position: .fPosition, classType: .business)


    static let cseat1A = Seat(row: 1, position: .aPosition, classType: .coach)
    static let cseat1B = Seat(row: 1, position: .bPosition, classType: .coach)
    static let cseat1C = Seat(row: 1, position: .cPosition, classType: .coach)
    static let cseat1D = Seat(row: 1, position: .dPosition, classType: .coach)
    static let cseat1E = Seat(row: 1, position: .ePosition, classType: .coach)
    static let cseat1F = Seat(row: 1, position: .fPosition, classType: .coach)

    static let cseat2A = Seat(row: 2, position: .aPosition, classType: .coach)
    static let cseat2B = Seat(row: 2, position: .bPosition, classType: .coach)
    static let cseat2C = Seat(row: 2, position: .cPosition, classType: .coach)
    static let cseat2D = Seat(row: 2, position: .dPosition, classType: .coach)
    static let cseat2E = Seat(row: 2, position: .ePosition, classType: .coach)
    static let cseat2F = Seat(row: 2, position: .fPosition, classType: .coach)
}



var seats: [Seat] = [
    .seat1A, .seat1B, .seat1C, .seat1D, .seat1E, .seat1F,
    .seat2A, .seat2B, .seat2C, .seat2D, .seat2E, .seat2F,
    .seat3A, .seat3B, .seat3C, .seat3D, .seat3E, .seat3F,
    .cseat1A, .cseat1B, .cseat1C, .cseat1D, .cseat1E, .cseat1F,
    .cseat2A, .cseat2B, .cseat2C, .cseat2D, .cseat2E, .cseat2F
]

let business = seats
    .filter { $0.classType == .business }

let leftBusiness = business
    .filter { $0.position.side == .left }

let rightBusiness = business
    .filter { $0.position.side == .right }


let coach = seats
    .filter { $0.classType == .coach }

let leftCoach = coach
    .filter { $0.position.side == .left }

let rightCoach = coach
    .filter { $0.position.side == .right }
