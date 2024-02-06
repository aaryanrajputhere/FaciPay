//
//  ContentView.swift
//  UPI
//
//  Created by Irfan on 05/02/24.
//

import SwiftUI
import SwiftData
import VisionKit

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                
                Color.black.ignoresSafeArea()
                
                ScrollView{
                    VStack{
                        
                        ZStack{
                            Rectangle().frame(width:390,height:200).foregroundColor(.ourgray).cornerRadius(13)
                            
                            VStack{
                                
                                HStack{
                                    
                                    Spacer()
                                    ZStack{
                                        
                                        Rectangle().frame(width:240.0,height:40).foregroundColor(.yelllo).cornerRadius(50)
                                            .font(.headline).padding(.leading,10)
                                        
                                        Label("  PAY BY FACE ", systemImage: "qrcode.viewfinder").font(.system(size:23))
                                        
                                    }
                                    Image("Image").resizable().frame(width:140,height:40).padding(.trailing,10)
                                    
                                    
                                }.padding(5)
                                Rectangle().frame(width:380,height:2).foregroundColor(.gray).padding(5)
                                
                                PaymentOptions()
                            }
                            
                            
                        }
                        HStack{
                            ZStack{
                                Rectangle().frame(width:130,height:38).foregroundColor(.ourgray).cornerRadius(5)
                                Text("Activate UPI Lite ").font(.system(size: 13)).foregroundColor(.white)
                                
                            }
                            
                            ZStack{
                                Rectangle().frame(width:250,height:38).foregroundColor(.ourgray).cornerRadius(5)
                                Text("UPI ID: VaibhavKanda@facipay  ").font(.system(size: 13)).foregroundColor(.white)
                            }

                        }
                        
                        HStack{
                            Text("Faci").fontWeight(.bold).foregroundColor(.faci).font(.largeTitle)
                            Text("Pay Wallet :").fontWeight(.bold).foregroundColor(.white).font(.largeTitle)
                        }.frame(width:360,alignment:.leading).padding(15)
                        
                        
                        ZStack{
                            Rectangle().frame(width:390,height:170).foregroundColor(.wallet).cornerRadius(15)
                            VStack{
                                HStack{
                                    VStack{
                                        
                                        Text("Total Wallet Balance")
                                            .font(.system(size:21,weight:.bold)).foregroundColor(.white).frame(width:360,alignment: .leading).padding(1)
                                        Label("6000.00",systemImage: "indianrupeesign").foregroundColor(.white).frame(width:360, alignment:.leading).font(.system(size: 20,weight:.semibold))
                                        
                                        
                                        
                                        Spacer()
                                    }.padding(10)
                                    
                                }
                                
                                walletOptions()
                                
                                Spacer()
                            }
                            
                        }.padding(.bottom,10)
                        
                        Text("Recents :").fontWeight(.semibold).foregroundColor(.white).frame(width:390,alignment: .leading).font(.title)
                        
                        HStack(spacing:45){
                            VStack{
                                Image("Irfan").resizable().frame(width:55,height:54).clipShape(RoundedRectangle(cornerRadius:25))
                                Text("Irfan ").foregroundColor(.white).font(.system(size: 14))
                                
                                Text("O.K.").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image("Harsh").resizable().frame(width:55,height:54).clipShape(RoundedRectangle(cornerRadius:25))
                                Text("Harsh ").foregroundColor(.white).font(.system(size: 14))
                                
                                Text("Singh").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image("Aaryan").resizable().frame(width:55,height:54).clipShape(RoundedRectangle(cornerRadius:25))
                                Text("Aaryan ").foregroundColor(.white).font(.system(size: 14))
                                
                                Text("Rajput").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image("kanda").resizable().frame(width:55,height:54).clipShape(RoundedRectangle(cornerRadius:25))
                                Text("Vaibhav ").foregroundColor(.white).font(.system(size: 14))
                                
                                Text("Kanda").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            
                        }.padding(10)
                        
                        Text("Bills and Recharges : ").fontWeight(.semibold).foregroundColor(.white).frame(width:390,alignment: .leading).font(.title)
                        
                        HStack(spacing:25){
                            VStack{
                                Image(systemName: "tv").resizable().frame(width:55,height:44).foregroundColor(.white)
                                Text("TV ").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image(systemName: "wifi").resizable().frame(width:55,height:44).foregroundColor(.white)
                                Text("BraodBand ").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image(systemName: "iphone.gen1").resizable().frame(width:45,height:54).foregroundColor(.white)
                                Text("Phone ").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            VStack{
                                Image(systemName: "bolt").resizable().frame(width:55,height:44).foregroundColor(.white)
                                Text("Electricity ").foregroundColor(.white).font(.system(size: 14))
                            }
                            
                            
                        }
                        
                       
                        
                        
                    }
                }
                
                    Spacer()
                }

        }
    }

    
}

#Preview {
    ContentView()
}

struct PaymentOptions: View {
    var body: some View {
    
        HStack(spacing:40){
            VStack{
                NavigationLink(destination: ScanView()){
                    VStack{
                        Image(systemName: "faceid").resizable().frame(width:45,height:45).foregroundColor(.white)
                        
                        Text("Pay by").foregroundColor(.green).font(.system(size: 14))
                        
                        Text("Face").foregroundColor(.green).font(.system(size: 14))
                    }
                    
                }
            }
            
            VStack{
                Image(systemName: "qrcode.viewfinder").resizable().frame(width:45,height:45).foregroundColor(.white)
                
                Text("Pay by").foregroundColor(.green).font(.system(size: 14))
                
                Text("QR").foregroundColor(.green).font(.system(size: 14))
            }
            
            VStack{
                Image(systemName: "person.crop.circle").resizable().frame(width:50,height:50).foregroundColor(.white)
                
                Text("Pay to").foregroundColor(.green).font(.system(size: 15))
                
                Text("Contact").foregroundColor(.green).font(.system(size: 15))
            }
            
            VStack{
                Image(systemName: "building.columns").resizable().frame(width:50,height:50).foregroundColor(.white)
                
                Text("Bank ").foregroundColor(.green).font(.system(size: 15))
                
                Text("Transfer").foregroundColor(.green).font(.system(size: 15))
            }
            
        }
    }
}

struct walletOptions: View {
    var body: some View {
        HStack(spacing:35){
            VStack{
                Image(systemName: "faceid").resizable().frame(width:40,height:40).foregroundColor(.white)
                
                Text("Pay by").foregroundColor(.white).font(.system(size: 12))
                
                Text("Face").foregroundColor(.white).font(.system(size: 12))
            }
            
            VStack{
                Image(systemName: "plus").resizable().frame(width:40,height:40).foregroundColor(.white)
                
                Text("Add").foregroundColor(.white).font(.system(size: 12))
                
                Text("Money").foregroundColor(.white).font(.system(size: 12))
            }
            
            VStack{
                Image(systemName: "person.crop.circle").resizable().frame(width:40,height:40).foregroundColor(.white)
                
                Text("Pay to").foregroundColor(.white).font(.system(size: 12))
                
                Text("Contact").foregroundColor(.white).font(.system(size: 12))
            }
            
            VStack{
                Image(systemName: "building.columns").resizable().frame(width:40,height:40).foregroundColor(.white)
                
                Text("Bank ").foregroundColor(.white).font(.system(size: 12))
                
                Text("Transfer").foregroundColor(.white).font(.system(size: 12))
            }
            
            VStack{
                Image(systemName: "banknote").resizable().frame(width:40,height:40).foregroundColor(.white)
                
                Text("Mini ").foregroundColor(.white).font(.system(size: 12))
                
                Text("Loan").foregroundColor(.white).font(.system(size: 12))
            }
            
            
        }
    }
}
