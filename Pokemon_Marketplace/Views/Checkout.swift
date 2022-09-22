//
//  Checkout.swift
//  Pokemon_Marketplace
//
//  Created by Patrick Nguyen on 2022-09-21.
//

import SwiftUI

struct Checkout: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var credit: String = ""

    @State var title: String = ""

    var body: some View {
        ScrollView {
            Text("Enter your name")
            TextField("Name", text: $name)
                .padding(.horizontal)
                .frame(width: 350, height: 40)
                .background(Color(.systemGray5))
                .cornerRadius(5)
            
            Text("Enter your email")
            TextField("Email", text: $email)
                .padding(.horizontal)
                .frame(width: 350, height: 40)
                .background(Color(.systemGray5))
                .cornerRadius(5)
            
            Text("Enter credit card number")
            TextField("Credit Card", text: $credit)
                .padding(.horizontal)
                .frame(width: 350, height: 40)
                .background(Color(.systemGray5))
                .cornerRadius(5)
                
                Button(action: {
                    self.title = ""
                }, label: {
                    Text("Pay Now")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                })
        }
        .navigationTitle("Checkout")
        .padding()
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}
