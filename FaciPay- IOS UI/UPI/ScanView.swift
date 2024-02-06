//
//  ScanView.swift
//  UPI
//
//  Created by Irfan on 06/02/24.
//

import SwiftUI
import LocalAuthentication



struct ScanView: View {
    
    @State private var unlocked = false
    @State private var text = "LOCKED"
    
    var body: some View {
        
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                
                VStack{
                    Image(systemName: "faceid").resizable().foregroundColor(.gray).frame(width:350,height:350).padding()
                    
                    Button("Scan Face")
                    {
                        authenticate()
                                                
                    }.padding().font(.system(size: 20,weight:.heavy)).background(Color.white).cornerRadius(10)
                }
                
            }
            
        }
        
        
        
    }
    
    func authenticate()
    {
        let context = LAContext()
        var error: NSError?
        
        context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error)
        
        context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "This is for enhanced UPI"){ success,
            authenticationError in
            
            if success{
                text="Proceed"
                
            }
            else{
                text="Error"
            }
        }
        
    }
}

#Preview {
    ScanView()
}


