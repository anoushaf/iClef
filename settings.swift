//
//  settings.swift
//  swiftUInotes
//
//  Created by Anousha Farshid on 6/16/20.
//  Copyright © 2020 Anousha Farshid. All rights reserved.
//

import SwiftUI

struct settings: View {
    @State public var set = 1
    var body: some View {
            ZStack{
                  Image("background").resizable()
                   .scaledToFill().edgesIgnoringSafeArea(.all)
        
                  VStack{
                    
                    Text("Note Names").font(.system(size: 30)).fontWeight(.heavy).font(.title).foregroundColor(.white).padding()
                       

                    
                    Button(action: {
                            
                         //   gView.init(set: 2)
                          //ContentView.init(s: 2)
                       // VStack{
                        self.set = 2


                            })
                    {Text("Do, Re, Mi, Fa, Sol, La, Ti").font(.title).foregroundColor(.white).frame(width: 400, height: 50) .padding()
                        }

                        
                    Button(action: {
                           // gView.init(set: 2)

                        })
                        { Text("C, D, E, F, G, A, H").font(.title).foregroundColor(.white).frame(width: 400, height: 50) .padding() }
                    
                    Button(action: {
                         //   gView.init(set: 1)
                    })
                    { Text("C, D, E, F, G, A, B").font(.title).foregroundColor(.white).frame(width: 400, height: 50) .padding() }
                        Spacer()
                    
                    
                    NavigationLink(destination: ContentView()){ Image("sol").renderingMode(.original).resizable()
                                               .aspectRatio(contentMode: .fit)
                                           }
                }
        }
        
    }
                
                
}


struct settings_Previews: PreviewProvider {
    static var previews: some View {
        settings()
    }
}
