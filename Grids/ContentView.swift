//
//  ContentView.swift
//  Grids
//
//  Created by Tanya Landsman on 4/7/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            HStack {
                SeatGroupView(data: rightBusiness)
                SeatGroupView(data: leftBusiness)
            }
            HStack {
                SeatGroupView(data: rightCoach)
                SeatGroupView(data: leftCoach)
            }
        }
    }
}



struct SeatView: View {
    @State var seat: Seat
    @State var width: CGFloat
    @State var height: CGFloat

    
    var body: some View {
        HStack {
            Button(action: {
                print("Booked \(seat.id)")
            }, label: {
                Text(seat.name)
                    .fontWeight(.heavy)
            })

        }
        .frame(width: width, height: height)
        .foregroundColor(.black)
        .background(Color.gray)
        .cornerRadius(10.0)
    }
}


struct SeatGroupView: View {
    let data:[Seat]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.id) { seat in
                    switch seat.classType {
                    case .business:
                        SeatView(seat: seat, width: 50, height: 40)
                    case .coach:
                        SeatView(seat: seat, width: 40, height: 30)
                    }

            }
        }
        .padding(.horizontal)
        }
}
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
