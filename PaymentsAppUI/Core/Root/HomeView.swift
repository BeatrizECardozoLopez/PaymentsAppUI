//
//  ContentView.swift
//  PaymentsAppUI
//
//  Created by Beatriz Cardozo on 27/8/24.
//

import SwiftUI

struct HomeView: View {
    
    //MARK: Color Variables
    var primaryColor = Color("PrimaryPink")
    
    var body: some View {
        VStack {
            TopBar()
            
            ScrollView (showsIndicators: false){
                UserData()
                
                PaymentMethods()
                
                Suggestions()
            }
            .ignoresSafeArea()
            
            Spacer()
        }
        .padding()
    }
}

//TopBar Design
struct TopBar: View {
    var body: some View {
        HStack (spacing: 24){
            Image(systemName: "line.3.horizontal")
            Spacer()
            Image(systemName: "qrcode")
            Image(systemName: "person.fill")
            Image(systemName: "bell.fill")
        }
        .padding(.horizontal, 24)
        .font(.system(size: 24))
    }
}

//User Info Design
struct UserData: View {
    //MARK: Color Variables
    var primaryColor = Color("PrimaryPink")
    var body: some View {
        HStack (spacing: 24){
            ZStack {
                Image("ExampleProfilePicture")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .blur(radius: 3.0)
                
                Circle()
                    .stroke(primaryColor, lineWidth: 5)
                       .frame(width: 94, height: 94)
                   
                   Image(systemName: "crown.fill")
                    .foregroundColor(primaryColor)
                       .font(.headline)
                       .offset(x: 40, y: -44)
                
            }
            
            VStack (alignment: .leading, spacing: 8){
                Text("@usuario")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                Text("Nivel 100")
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(32)
        .padding(.vertical, 10)
    }
}

//Payment Methods Design
struct PaymentMethods: View {
    //MARK: Color Variables
    var primaryColor = Color("PrimaryPink")
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Métodos de Pago")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                Spacer()
                ZStack {
                    Text("Ver movimientos")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    .foregroundStyle(.blue)
                    Text("1")
                        .font(.caption)
                        .foregroundStyle(.white)
                        .fontWeight(.black)
                        .padding(7)
                        .background(primaryColor)
                        .clipShape(Circle())
                        .offset(x: 56, y: -15)
                }
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 20.0)
                    .fill(Color("DarkBlue"))
                
                HStack {
                    VStack (alignment: .leading, spacing: 8){
                        Text("Bancamiga Wallet")
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.footnote)
                        Text("Bs.  711")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.headline)
                    }
                    .padding(24)
                    Spacer()
                    HStack (spacing: 24){
                        Button{} label :{
                            Text("+")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Color.pink)
                                .cornerRadius(10)
                        }
                        
                        Button{} label: {
                            Image(systemName: "arrow.left.arrow.right")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Color.pink)
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                    
                }
            }
        }
        .padding(.horizontal)
    }
}

//Suggestions Design
struct Suggestions: View {
    var body: some View {
        VStack {
            HStack {
                Text("Sugerencias")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                Spacer()
            }
            .padding()
            VStack {
                SuggestionTiles(title: "Movistar", description:"Recarga tus datos fácil y en un solo lugar. Disfruta de la navegación más rápida.", image: "movistar")
                SuggestionTiles(title: "Qué hay para hoy?", description:"Disfruta de un buen plan con tus amigos. Paga fácil y rápido!", image: "cine")
                SuggestionTiles(title: "Cantv", description:"Adquiere el mejor servicio de comunicación de toda Venezuela!", image: "cantv")
            }
        }
    }
}

#Preview {
    HomeView()
}
