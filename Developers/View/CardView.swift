//
//  CardView.swift
//  Developers
//
//  Created by Jasmine Lai Hweeying on 05/06/2023.
//

import SwiftUI

struct CardView: View {
    
    let card: Card
    
    @State private var showAlert: Bool = false
    
    var body: some View {
        ZStack{
            Image(card.imageName)
            
            VStack{
                Text(card.title)
                  .font(.largeTitle)
                  .fontWeight(.heavy)
                  .foregroundColor(Color.white)
                  .multilineTextAlignment(.center)
                
                Text(card.headline)
                  .fontWeight(.light)
                  .foregroundColor(Color.white)
                  .italic()
            }
            .offset(y: -218)
            
            Button(action: {
                showAlert = true
                playSound(sound: "sound-chime", type: "mp3")
            }){
                HStack {
                 Text(card.callToAction.uppercased())
                   .fontWeight(.heavy)
                   .foregroundColor(Color.white)
                   .accentColor(Color.white)
                 
                 Image(systemName: "arrow.right.circle")
                   .font(Font.title.weight(.medium))
                   .accentColor(Color.white)
               }
               .padding(.vertical)
               .padding(.horizontal, 24)
               .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
               .clipShape(Capsule())
               .shadow(color: Color("ColorShadow"), radius: 6, x: 0, y: 3)
            }
            .offset(y: 210)
            
            
        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(card.title),
                message: Text(card.message),
                dismissButton: .default(Text("OK"))
              )
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
    }
}
