//
//  PlaySound.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 25/08/24.
//

import AVFoundation

var audioPlayers: [String: AVAudioPlayer]? = [:]

func playSound(sound: String, type: String, identifier: String) {
    DispatchQueue.global(qos: .userInitiated).async { // Move the audio loading to a background thread
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                let player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player.play()
                print(player)
                audioPlayers?[identifier] = player // Store the player with its identifier
            } catch {
                print("ERROR: Could not find or play sound file \(sound).\(type)")
            }
        }
    }
}

// Function to stop a specific sound by its identifier
func stopSound(identifier: String) {
    if let player = audioPlayers?[identifier] {
        player.stop()
        audioPlayers?.removeValue(forKey: identifier)
    }
}
