//
//  CardView.swift
//  Simin Savani Final Project
//
//  Created by Shirin Savani on 12/8/19.
//  Copyright © 2019 Shirin Savani. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack{
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
        opacity: 0.1), lineWidth: 1) )
        .padding([.top, .horizontal])
    }

}
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "resettlement", category: "Immigration", heading: "Resettlement offices close as fewer refugees are allowed into the US", author: "Priscilla Alvarez, CNN")
    }
}
