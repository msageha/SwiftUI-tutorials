//
//  LandmarkList.swift
//  SwiftUi-tutorials
//
//  Created by sango.m.ab on 2020/08/20.
//  Copyright © 2020 sango.m.ab. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        List(landmarkData.identified(by: \.id)) { landmark in
//                LandmarkRow(landmark: landmark)
//        }
        NavigationView{
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}


struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
