//
//  ContentView.swift
//  swiftUInotes
//
//  Created by Anousha Farshid on 4/4/20.
//  Copyright © 2020 Anousha Farshid. All rights reserved.
//

import SwiftUI

struct ContentView: View {
     
    @State public var s = 1
    var body: some View {
        NavigationView{
            ZStack{
                Image("background").resizable()
                 .scaledToFill().edgesIgnoringSafeArea(.all)
                VStack{
                    //Spacer()

   
                    HStack{
                        Text(" Select a Clef!").font(.system(size: 30)).fontWeight(.heavy).font(.title).foregroundColor(.white).padding()

                    }.padding(.top)
                    
  
                    HStack{
                        NavigationLink(destination: gView()){ Image("sol").renderingMode(.original).resizable()
                            .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: bView()) {
                        Image("fa").renderingMode(.original).resizable()
                            .aspectRatio(contentMode: .fit)
                        }
                    
                    }.aspectRatio(contentMode: .fit).padding()
                    HStack{
                        NavigationLink(destination: c1View()) {
                            Image("do1").renderingMode(.original).resizable()
                            .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: c2View()) {
                            Image("do2").renderingMode(.original).resizable()
                            .aspectRatio(contentMode: .fit)
                        }
                        
                        
                }.aspectRatio(contentMode: .fit).padding()
                    HStack{
                           NavigationLink(destination: c3View()) {
                               Image("do3").renderingMode(.original).resizable()
                               .aspectRatio(contentMode: .fit)
                           }
                           NavigationLink(destination: c4View()) {
                               Image("do4").renderingMode(.original).resizable()
                               .aspectRatio(contentMode: .fit)
                        }
                    }.aspectRatio(contentMode: .fit).padding()
                Spacer()
                }.aspectRatio(contentMode: .fit).padding()
            }
                
        }.navigationViewStyle(StackNavigationViewStyle()).padding(0)

    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
