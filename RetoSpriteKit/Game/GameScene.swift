//
//  GameScene.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 06/08/24.
//

import SwiftUI
import SpriteKit

// For the Physics
struct PhysicsCategory {
    
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    // Actual Game State
    var gameState: GameState = .playing
    
    // A closure that can be called when the game is over.
    var onGameOver: (() -> Void)?
        
    // Sprites
    // The nodes represent each of the instances of the different existing characters
    var backgroundNodes: [SKSpriteNode] = []
    var characterNode: SKSpriteNode!
    var enemyNode: SKSpriteNode!
    var scoreManager: ScoreManager!

    // Constants for the Spawn of enemies
    var timeSinceLastSpawn = 0.0 as Double
    var spawnRate = 2.0 as Double

    // To stop the movement
    var shouldMoveCharacter = true
    
    // Setup all the elements of the Scene
    override func didMove(to view: SKView) {
        
        // For the Score

        // contactDelegate allows you to assign an object to receive notifications when two physics bodies in the scene collide
        // so this line helps to notify the scene that a collision is happening
        
    }
    
    // Background
    // This function sets up a scrolling background using three instances of SKSpriteNode.
    // The background moves to create a scrolling effect, giving the illusion of movement.
    func setupBackground() {

    }
    
    // This function moves the background nodes leftwards.
    func moveBackground() {

    }
    
    // Main Character
    // This function configures the main character (Teus).
    // It sets up the character's sprite, applies an animation, defines its position, and assigns a physics body for collision detection.
    func setupCharacter() {
        // Constants
            
        // Textures

        // If the texture is scaled, maintain it pixelated

        // Some Animations
            
        // Let’s define Teus’s position

        // Now, let’s start declaring Teus’s physics
        
        // ——————— Set the physics category of Teus ——————————————————————————-

        // ——————- With whom should Teus generate an alert if he contacts? ——-—

        // ——————— With whom should Teus be able to collide? ——————————————-———

        // Set the Run Animation
        
        // Add Teus to the scene

    }

    // No chance that they beat Teus, right?
    func setupEnemy() {
        // Constants
        
        // Textures
         
        // Arrays of enemy textures
        
        // Randomly choose between arrays

        // Setting up the sprites
        
        // The Animation Part
        
        // Movement
        
        // Position
        
        // Now, the physics
        
        // Running the animation
        
        // Add the sprites to the scene
        
    }
    
    // DID THE CAMPUS DUCKS ESCAPED TO HELP TEUS?!?
    func setupCollectable() {
        // Constants
                
        // Textures

        // Set up the Sprites

        // Create an animation action to constantly switch between the textures

        // Run the animation on the object node
        
        /*
         // Animation
        let screenWidth = self.frame.size.width
        let distanceOffscreen: CGFloat = 50.0
        let distanceToMove = screenWidth + distanceOffscreen + objectTexture1.size().width * scale
        
        let moveObject = SKAction.moveBy(x: -distanceToMove, y: 0.0, duration: TimeInterval(screenWidth / 500))
        let removeObject = SKAction.removeFromParent()
        let moveAndRemove = SKAction.sequence([moveObject, removeObject])
        
        // Position
        objectNode.position = CGPoint(x: size.width + distanceOffscreen, y: size.height / 5)
        objectNode.zPosition = 2
        
        // Physics
        let objectContact = CGSize(width: objectTexture1.size().width * scale,
                                   height: objectTexture1.size().height * scale)
        objectNode.physicsBody = SKPhysicsBody(rectangleOf: objectContact)
        objectNode.physicsBody?.isDynamic = false
        objectNode.physicsBody?.mass = 1.0
        objectNode.physicsBody?.categoryBitMask = PhysicsCategory.object
        objectNode.physicsBody?.contactTestBitMask = PhysicsCategory.character
        
         // Running the animation
        objectNode.run(moveAndRemove)
        
        objectNode.isPaused = isPaused
        
        // Add to scene
        addChild(objectNode)
         */
    }
    
    // Fading Out Function
    var isClickable = true
    var lastFadeOutTime: TimeInterval = 0.0
    
    // Handles touches on the screen. It disables physics interactions and triggers a fade-out and fade-in effect on the character
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    // Specifically handles touches during the playing state. It runs the fade-out animation on the character and temporarily disables physics interactions during the animation
    func handlePlayingTouches(_ touches: Set<UITouch>) {
        // Disable physics interactions during the fade-out animation

        // The character disappears for a few seconds and then reappears

        // Restore physics interactions after the fade-out animation
        
    }

    
    // Called once per frame. It moves the background to create the scrolling effect, spawns enemies or collectable objects at random intervals, and updates the score.
    override func update(_ currentTime: TimeInterval) {
        guard shouldMoveCharacter else {
            return
        }

        // The magic begins...
        if !isPaused {
            // Background, Score, Enemies and Colectables are updated
            
        }
    }
    
    // Collisions
    // Triggered when two physics bodies begin contact
    func didBegin(_ contact: SKPhysicsContact) {
        
        // If the character collides with an enemy, the game state changes to gameOver, stopping the character's movement and invoking the onGameOver closure.
        
        // If the character collides with a collectable object, the oject is removed from the scene, and the score increases by 10 points.
            
            // Object and character collided
        
                // Remove the object from the scene
                
    }
}
