//
//  gView.swift
//  swiftUInotes
//
//  Created by Anousha Farshid on 4/4/20.
//  Copyright © 2020 Anousha Farshid. All rights reserved.
//

import SwiftUI
import AVFoundation


struct c2View: View {
    @State public var set = 1
    @State private var cardNum = 7
    @State private var result = -1
    @State private var score = 0
    @State private var counter = 0
    @State private var played = 0
    @State private var index = 3
    @State private var octave = 2

    @State private var buttonColor:Color = .white

    

    var body: some View {
        
        ZStack{
            Image("background").resizable()
             .scaledToFill().edgesIgnoringSafeArea(.all)
  
            VStack{
                
                HStack{
                    
                     if(self.result == 2){
                        Image("res2").resizable()
                                  .scaledToFit()
                                  .frame(width: 100.0, height: 80.0)

                        Image("f" + String(self.index)).resizable()
                         .scaledToFit()
                         .frame(width: 80.0, height: 50.0)
                     }
                     else if(self.result == 1){
                        Image("res1").resizable()
                        .scaledToFit()
                        .frame(width: 100.0, height: 80.0)
                       
                        Image("t" +  String(self.index)).resizable()
                        .scaledToFit()
                        .frame(width: 80.0, height: 50.0)

                    }
                     else{
                        Image("").resizable()
                                    .scaledToFit()
                                    .frame(width: 100.0, height: 80.0)
                           Image("").resizable()
                           .scaledToFit()
                           .frame(width: 80.0, height: 50.0)
                        
                        
                    }

                    
                }
                Image("alto2-" + String(self.cardNum)).resizable()
                    .scaledToFit()
                   // .frame(width: 350.0, height: 250.0)
                HStack{
                    Text("Octave: " + String(self.octave)).fontWeight(.ultraLight).foregroundColor(.white).padding(.top, 50).padding(.leading, 30)
                    Spacer()
                    Button(action: {
                        if(self.octave > 1){
                        self.octave = self.octave - 1
                                                       
                        }
                                                   
                    })
                    {Image("prevOctave").resizable().renderingMode(.original).frame(width: 20.0, height: 20.0).padding(.top,50)}
                    Button(action: {
                        if(self.octave < 4){
                        self.octave = self.octave + 1
                                                       
                    }
                                                   
                    })
                    {Image("nextOctave").resizable().renderingMode(.original).frame(width: 20.0, height: 20.0).padding(.top,50).padding(.trailing, 30)}
                                               
                                           }
                              
                
                ZStack{
                Image("piano").resizable()
                    .scaledToFit()
                    .frame(width: 400.0, height: 250.0)

                    VStack{

                    HStack{

                    Button(action: {
                        if(self.result == -1){
                                if (self.cardNum == 6 || self.cardNum == 13 ){
                                    self.score += 1
                                    self.result = 1
                                    self.buttonColor = .green

                                }
                                else{
                                    self.result = 2
                                    self.buttonColor = .red
                                }
                            self.counter += 1
                            self.played = 1

                            }
                        playSound(key: "c" + String(self.octave))
                        }
)
                    { Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200) .padding(-3).padding(.top, 30)                                          }
                        
                        
                        Button(action: {
                            if(self.result == -1){
                                if (self.cardNum == 0 || self.cardNum == 7 || self.cardNum == 14 ){
                                    self.score += 1
                                    self.result = 1
                                }
                                else{
                                    self.result = 2
                                    }
                                self.counter += 1
                                self.played = 1;

                                }
                                playSound(key: "d" + String(self.octave))

                            })
                        {Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200).padding(-3).padding(.top, 30)
                                               }
        
                        Button(action: {
                            if(self.result == -1){
                                    if (self.cardNum == 1 || self.cardNum == 8 || self.cardNum == 15 ){
                                        self.score += 1
                                        self.result = 1

                                    }
                                    else{
                                        self.result = 2
                                    }
                                    self.counter += 1
                                    self.played = 1

                                }
                             playSound(key: "e"  + String(self.octave))

                            })
                        { Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200).padding(-3).padding(.top, 30)
                                               }
                        
                        Button(action: {
                            if(self.result == -1){
                                if (self.cardNum == 2 || self.cardNum == 9 || self.cardNum == 16 ){
                                self.score += 1
                                self.result = 1

                                }
                                else{
                                    self.result = 2
                                }
                            self.counter += 1
                            self.played = 1
                            }
                             playSound(key: "f" + String(self.octave))

                        })
                        { Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200) .padding(-3).padding(.top, 30)
                                               }
                        
                        
                        Button(action: {
                            if(self.result == -1){
                            if (self.cardNum == 3 || self.cardNum == 10 ){
                                self.score += 1
                                self.result = 1

                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                            }
                             playSound(key: "g" + String(self.octave))

                        })
                        { Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200).padding(-3).padding(.top, 30)
                                               }
                        
                        
                        Button(action: {
                            if(self.result == -1){
                            if (self.cardNum == 4 || self.cardNum == 11 ){
                                self.score += 1
                                self.result = 1

                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                            }
                             playSound(key: "a" + String(self.octave))

                        })
                        { Text("").font(.title).foregroundColor(.black).frame(width: 50, height: 200).padding(-3).padding(.top, 30)
                                               }
                        
                        Button(action: {
                            if(self.result == -1){
                            if (self.cardNum == 5 || self.cardNum == 12){
                                self.score += 1
                                self.result = 1

                            }
                            else{
                                self.result = 2
                            }
                            self.counter += 1
                            self.played = 1
                            }
                             playSound(key: "b" + String(self.octave))

                        })
                        { Image("").font(.title).background(Color.black).frame(width: 50, height: 200) .padding(-3).padding(.top, 30)
                                               }
                        

                        }
                    }

                }
                HStack{
                    Button(action: {
                        if (self.set > 1){
                            self.set = self.set - 1
                        }
                        })
                    {Text("<").foregroundColor(.white)}
                    
                    Text("Notation").foregroundColor(.white)
                    
                    Button(action: {
                        if (self.set < 4){
                            self.set = self.set + 1
                        }
                        })
                    {Text(">").foregroundColor(.white)}
                }
                HStack{


                    Text("Score: " + String(score) + "/" + String(counter)).foregroundColor(.white).padding(50)
                    Spacer()

                    Button(action: {

                        self.cardNum =
                            Int.random(in: 0...16)
                        
                         if(self.cardNum < 6){
                             self.octave = 2
                         }
                        else if(self.cardNum >= 6 && self.cardNum < 13){
                             self.octave = 3
                         }
                         else if(self.cardNum >= 13){
                              self.octave = 4
                          }
                        self.result = -1
                        if(self.played == 0){
                            self.counter += 1
                        }
                        self.played = 0
                        if(self.cardNum % 7 > 3){
                            self.index = (self.cardNum % 7) - 4
                            
                        }
                        else{
                            self.index = (self.cardNum % 7) + 3
                            
                        }
                    })
                    { Image("next").resizable().renderingMode(.original)
                    .scaledToFit()
                        .frame(width: 80.0, height: 50.0).padding(30)
                    }
                }
            }
            
        }


    }
}

struct c2View_Previews: PreviewProvider {

    static var previews: some View {
        c2View()
        
    }
    
}
