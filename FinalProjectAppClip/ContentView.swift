//
//  ContentView.swift
//  FinalProjectAppClip
//
//  Created by Capstone on 9/10/20.
//  Copyright © 2020 Shirin Savani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("Know Your Rights")
                    .padding()
                    .font(.largeTitle)
                EnglishYourRights()
                
                Text("Legal Help in Georgia")
                    .padding()
                    .font(.largeTitle)
                LegalHelpGeorgia()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct EnglishYourRights: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 25){
                Text("Law enforcement asks about my immigration status:")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Text("How to reduce risk to yourself")
                    .font(.title2)
                Text("• Stay calm. Don’t run, argue, resist, or obstruct the officer, even if you believe your rights are being violated. Keep your hands where police can see them.")
                    .font(.body)
                Text("• Don’t lie about your status or provide false documents.")
                    .font(.body)
                Text("Your Rights")
                    .font(.title2)
                Text("• You have the right to remain silent and do not have to discuss your immigration or citizenship status with police, immigration agents, or other officials. Anything you tell an officer can later be used against you in immigration court.")
                    .font(.body)
                Text("• If you are not a U.S. citizen and an immigration agent requests your immigration papers, you must show them if you have them with you.")
                    .font(.body)
                Text("• If an immigration agent asks if they can search you, you have the right to say no. Agents do not have the right to search you or your belongings without your consent or probable cause.")
                    .font(.body)
               Text("• If you’re over 18, carry your papers with you at all times. If you don’t have them, tell the officer that you want to remain silent, or that you want to consult a lawyer before answering any questions.")
                    .font(.body)
                Text("See More at: https://www.aclu.org/know-your-rights/immigrants-rights/")
                    .font(.body)
                    .underline(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, color: Color.blue)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        .padding()
        }
}

struct LegalHelpGeorgia: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Text("Asian American Advancing Justice: (404) 585-8446")
                .font(.body)
            Text("IRC Atlanta: (404) 292-7731")
                .font(.body)
            Text("Catholic Charities of Atlanta: (678) 222-3929")
                .font(.body)
            Text("Center for Pan Asian Community Services, Inc.: (770) 936-0969")
                .font(.body)
            Text("New American Pathways: (404) 299-6099")
                .font(.body)
            Text("World Relief Atlanta: (404) 294-4352")
                .font(.body)
            Text("Somali American Community Center: (404) 296-1308")
                .font(.body)
            Text("Latin American Association: (678) 205-1018")
                .font(.body)
            Text("Lutheran Services of Georgia: (678) 705-3083")
                .font(.body)
            Text("Kids in Need of Defense Atlanta: (404) 334-9170")
                .font(.body)
            
        }
        .padding()
    }
}
