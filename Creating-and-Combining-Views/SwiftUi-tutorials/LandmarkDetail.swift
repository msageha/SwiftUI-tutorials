//
//  ContentView.swift
//  SwiftUi-tutorials
//
//  Created by sango.m.ab on 2020/08/19.
//  Copyright © 2020 sango.m.ab. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                    .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                }
            }
            .padding()
            
             Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
       LandmarkDetail(landmark: landmarkData[0])
    }
}


