//
//  ScoreManager.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 09/08/24.
//

import SpriteKit

// Helper for the Score
class ScoreManager {

    var scoreLabel: SKLabelNode!
    var distanceTraveled: CGFloat = 0.0
    var score: Int = 0
    var flowerCount: Int = 0
    
    weak var scene: SKScene?

    // Initializes the place where you will put the objects, as well as the objects that will represent the score
    init(scene: SKScene) {
        self.scene = scene

        setupScoreLabel(in: scene)
        loadHighScore()
    }

    // This will set up the text of the Score (Score: 999)
    func setupScoreLabel(in scene: SKScene) {
        // Default Text
        
        // Font Selection
        
        // Position

    }

    // I will update the score based on the distance!
    func updateScore() {
        
        // Update the score label text
        
        // Check if it’s a new high score
        
    }
    
    // I will update the score based on the ducks we pick up!
    func addScore(points: Int) {
        // Add 100 points for each collected object

        // Update the score label text

        // Check if it’s a new high score
        
    }
    
    // The score is restarted each time a new game is started
    func resetScore() {
        score = 0
        flowerCount = 0
        updateScoreLabel()
    }
    
    // The score label is updated
    private func updateScoreLabel() {
        scoreLabel.text = "Score: \(score + flowerCount)"
    }
    
    // UserDefaults: "An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app"
    // Let’s declare a variable (key) that will hold the highscore

    
    // Load High Score from UserDefaults for displaying
    // UserDefaults prevents data from resetting when closing the app
    private func loadHighScore() {

    }

    // Check and update high score if needed
    private func checkAndUpdateHighScore() {
        // Update high score in UserDefaults
            
    }
}
