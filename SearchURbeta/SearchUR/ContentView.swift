//
//  ContentView.swift
//  SearchUR
//
//  Created by Nathan Letona on 3/24/21.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var text: String
    
    let stories = ["Image-1","Image-2","Image-3","Image-4"]
    
    let SearchURColor = UIColor(red: 23/255.0,
                                green: 120/255.0,
                                blue: 242/255.0,
                                alpha: 1)
    
    var body: some View {
        VStack {
            HStack {
                Text("SearchUR")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(SearchURColor))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 45, height: 45, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding(7)
            
            TextField("Search...", text: $text)
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(15)
                .padding(.horizontal, 15)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack {
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing:3){
                                ForEach(stories, id: \.self) {name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 125, height: 200, alignment: .center)
                                        .background(Color.red)
                                        .clipped()
                                    
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        SURPost()
                        Spacer()
                    }
                }
            }
            
            Spacer()
        }
    }
    
}

struct SURPost: View {
    var body: some View {
        VStack{
            HStack {
                Image("ucla")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                    .padding(6)
                VStack {
                    HStack {
                        Text("University of California State, Long Beach")
                            .foregroundColor(Color(.blue))
                            .font(.system(size: 19, weight: .bold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                            .font(.system(size: 15, weight: .semibold, design: .default))
                        Spacer()
                    }
                }
                
            }
            Spacer()
            HStack {
                Text("Following L.A. County's move to red tier status, we are pleased to announce a further expansion of on-campus activities and services.")
                    .fontWeight(.regular)
                
                
                
            }
            .padding(4)
            
            
            
        }
        VStack {
            HStack {
                Image("Long Beach State")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                    .padding(6)
                VStack {
                    HStack {
                        Text("California State University, Long Beach")
                            .foregroundColor(Color(.blue))
                            .font(.system(size: 19, weight: .bold, design: .default))
                        Spacer()
                        
                        
                    }
                    HStack {
                        Text("49 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                            .font(.system(size: 15, weight: .semibold, design: .default))
                        Spacer()
                        
                    }
                }
                
                
                
            }
        }
        
        Spacer()
        
        HStack {
            Text("Chungus")
            
            
        }
        .padding(4)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}

