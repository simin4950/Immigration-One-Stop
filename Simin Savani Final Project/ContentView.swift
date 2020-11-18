//
//  ContentView.swift
//  Simin Savani Final Project
//
//  Created by Shirin Savani on 12/8/19.
//  Copyright © 2019 Shirin Savani. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var selectedView = 0
    
    var body: some View {
        TabView(selection: $selectedView) {
            NewsView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("News")
            }.tag(0)
            
            RightsView()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Your Rights")
            }.tag(1)
            
            LegalView()
                .tabItem{
                    Image(systemName: "folder")
                    Text("Legal Help")
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct NewsView: View {
    var body: some View {
        ScrollView{
            Text("Current News")
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
                //.multilineTextAlignment(.leading)
                .font(.system(.largeTitle, design: .rounded))
            VStack{
                CardView(image: "resettlement", category: "Immigration", heading: "Resettlement offices close as fewer refugees are allowed into the US", author: "Priscilla Alvarez, CNN")
                CardView(image: "federal", category: "Immigration", heading: "Federal judge defends his decision to block asylum restrictions", author: "Priscilla Alvarez, CNN")
                CardView(image: "immigration", category: "Immigration", heading: "Immigration agency to re-open some requests to defer deportation", author: "Priscilla Alvarez, CNN")
            }
        }
        
    }
}

struct RightsView: View {
    @State var languages = ["English", "Spanish", "Chinese", "Tagalog", "Vietnamese", "Arabic", "French", "Korean", "Russian", "German", "Haitian Creole", "Hindi", "Portuguese", "Italian", "Polish", "Urdu", "Yiddish", "Japanese", "Persian", "Gujarati", "Telugu", "Bengali", "Tai–Kadai", "Greek", "Punjabi", "Tamil", "Armenian", "Serbo-Croatian", "Hebrew", "Hmong", "Bantu", "Khmer", "Navajo"]
    var body: some View {
        NavigationView{
            List(0 ..< languages.count){ item in
                NavigationLink(destination:
                    VStack{
                        if (self.languages[item] == "English") {
                            EnglishYourRights()
                        } else {
                            Text("Coming Soon!")
                        }
                    }
                ){
                    HStack(alignment: .center){
                        Text(self.languages[item])
                    }
                }
            }
        .navigationBarTitle("Know Your Rights")
            .font(.title)
        }
        
            
    }
}

struct LegalView: View {
    @State var locationName = ["Asian American Advancing Justice", "IRC Atlanta", "Catholic Charities of Atlanta", "Center for Pan Asian Community Services, Inc.", "New American Pathways", "World Relief Atlanta", "Somali American Community Center", "Latin American Association", "Lutheran Services of Georgia", "Kids in Need of Defense  Atlanta"]
    
    var body: some View {
        NavigationView {
            List(0 ..< locationName.count) { location in
                NavigationLink(destination:
                    LegalDetail(item: location)
                    //Text(self.locationName[location])
                    ){
                        Text(self.locationName[location])
                }
            }
        .navigationBarTitle("Legal Help in Georgia")
            .font(.title)
            
        }
    }
}

struct EnglishYourRights: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 25){

                Text("Law enforcement asks about my immigration status:")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                Text("How to reduce risk to yourself")
                    .font(.title)
                Text("• Stay calm. Don’t run, argue, resist, or obstruct the officer, even if you believe your rights are being violated. Keep your hands where police can see them.")
                    .font(.body)
                Text("• Don’t lie about your status or provide false documents.")
                    .font(.body)
                Text("Your Rights")
                    .font(.title)
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
                
            }
        .padding()
        }
    }
}
