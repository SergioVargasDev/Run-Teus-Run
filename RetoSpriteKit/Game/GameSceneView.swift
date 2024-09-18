//
//  GameSceneView.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 14/08/24.
//

import SwiftUI
import SpriteKit

struct GameSceneView: View {
    @Binding var currentGameState: GameState
    
    // Create a scene instance (GameScene type)
    var gameScene: GameScene {
        let scene = GameScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .aspectFill
        scene.onGameOver = {
            currentGameState = .gameOver
        }
        return scene
    }
    
    // The view is generated
    var body: some View {
        SpriteView(scene: gameScene) // SpriteView will be used due to the nature of the scene
            .ignoresSafeArea()
    }
}
