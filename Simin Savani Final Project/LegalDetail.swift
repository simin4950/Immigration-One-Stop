//
//  LegalDetail.swift
//  Simin Savani Final Project
//
//  Created by Shirin Savani on 12/8/19.
//  Copyright © 2019 Shirin Savani. All rights reserved.
//

import SwiftUI
import MapKit

struct LegalDetail: View {
    var item: Int
    @State var locationName = ["Asian American Advancing Justice", "IRC Atlanta", "Catholic Charities of Atlanta", "Center for Pan Asian Community Services, Inc.", "New American Pathways", "World Relief Atlanta", "Somali American Community Center", "Latin American Association", "Lutheran Services of Georgia", "Kids in Need of Defense  Atlanta"]
    @State var locationCoordX = [33.916688, 33.852689, 33.846426, 33.891460, 33.852890, 33.796730, 33.788940, 33.829270, 33.760150, 33.775240]
    @State var locationCoordY = [-84.191346, -84.249047, -84.249814, -84.286950, -84.259960, -84.212510, -84.235920, -84.346180, -84.388090, -84.418790]
    @State var locationAddress = ["5680 Oakbrook Pkwy Suite 148, Norcross, GA 30093", "2305 Parklake Dr NE, Atlanta, GA 30345", "2305 Parklake Dr NE Building 9, Suite 150, Atlanta, GA 30345", "3510 Shallowford Rd, Atlanta, GA 30341", "2300 Henderson Mill Rd, Atlanta, GA 30345", "655 Village Square Dr, Stone Mountain, GA 30083", "436 N Indian Creek Dr, Clarkston, GA 30021", "2750 Buford Hwy NE, Atlanta, GA 30324", "230 Peachtree St #1100, Atlanta, GA 30303", "970 Jefferson St NW, Atlanta, GA 30318"]

    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2D(
                latitude: locationCoordX[item], longitude: locationCoordY[item]), name: locationName[item])
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            Image(systemName: "briefcase.fill")
            
            Text(locationName[item])
            Text(locationAddress[item])
                .font(.body)
            .padding()

            //Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LegalDetail(item: 0)
    }
}
