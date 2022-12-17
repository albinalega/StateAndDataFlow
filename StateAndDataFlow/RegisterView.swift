//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Albina Lega on 17.12.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var name = ""
    //@State private var counter = 0

    @State private var disabled = true
    @EnvironmentObject private var userManager: UserManager
    @EnvironmentObject private var counter: Counter
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 25)
                
                TextField("Enter your name...", text: $counter.text)
                    .multilineTextAlignment(.center)
                
                Text("\(counter.counter)")
                //CounterView(name: $name)
                
            }
            .padding()
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(disabled)
            .onChange(of: name) { newValue in
                disabled = (newValue.count >= 3) ? false : true
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
    }
}


//struct CounterView: View {
//    @Binding var name: String
//    var counter = 0
//
//    init(name: Binding<String>) {
//        self._name = name
//        counter = self._name.wrappedValue.count
//    }
//
//    var body: some View {
//        Text(counter.formatted())
//    }
//}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
