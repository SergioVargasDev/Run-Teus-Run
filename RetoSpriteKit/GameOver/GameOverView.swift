//
//  GameOverView.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 13/08/24.
//

import SwiftUI

struct GameOverView: View {
    @Binding var currentGameState: GameState
    @State private var currentImageIndex = 0
    
    // Total number of images
    private let totalImages = 18

    var body: some View {
        ZStack {
            Image("blueBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .offset(y: -25)
            
            VStack {
                Text("Game Over!")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .bold()
                    .padding(.top, 25)
                
                // Display the current image
                Image("teusCard\(currentImageIndex)")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: UIScreen.main.bounds.width / 5,
                           maxHeight: UIScreen.main.bounds.width / 5)
                    .onAppear {
                        // Start a timer that updates the image index every 0.1 seconds
                        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                            currentImageIndex = (currentImageIndex + 1) % totalImages
                        }
                        
                        // ------------ NUEVO --------------
                        playSound(sound: "gameOver", type: "mp3", identifier: "gameOver")
                        

                }
                .padding(.bottom)
                
                HStack {
                                        
                    // To restart the game
                    Button {
                        // ------------ NUEVO --------------
                        playSound(sound: "buttonSound", type: "mp3", identifier: "buttonSound")
                        stopSound(identifier: "gameOver") // Stop the menu music

                        currentGameState = .playing
                    } label: {
                        Text("Try Again!")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(maxWidth: UIScreen.main.bounds.width / 6, alignment: .center)
                            .padding(15)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                    )
                    .cornerRadius(10)
                    .padding(.top)

                            
                    // To return to the First Screen
                    Button {
                        // ------------ NUEVO --------------
                        playSound(sound: "buttonSound", type: "mp3", identifier: "buttonSound")
                        stopSound(identifier: "gameOver") // Stop the menu music

                        currentGameState = .mainMenu
                    } label: {
                        Text("Menu")
                            .font(.headline)
                            .foregroundColor(.blue)
                            .frame(maxWidth: UIScreen.main.bounds.width / 6, alignment: .center)
                            .padding(15)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                    )
                    .cornerRadius(10)
                    .padding(.top)

                }
            }
        }
    }
}

/*
#Preview {
    GameOverView()
}
*/
