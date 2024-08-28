//
//  PlaySound.swift
//  RetoSpriteKit
//
//  Created by Ricardo Jorge Rodriguez Trevino on 25/08/24.
//

import AVFoundation

var audioPlayers: [String: AVAudioPlayer] = [:]

func playSound(sound: String, type: String, identifier: String) {
    DispatchQueue.global(qos: .userInitiated).async {
        if let path = Bundle.main.path(forResource: sound, ofType: type) {
            do {
                let player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                player.prepareToPlay()
                player.play()
                print(player)
                
                // Synchronize access to the audioPlayers dictionary
                DispatchQueue.main.async {
                    audioPlayers[identifier] = player
                }
            } catch {
                print("ERROR: Could not find or play sound file \(sound).\(type)")
            }
        }
    }
}

// Function to stop a specific sound by its identifier
func stopSound(identifier: String) {
    if let player = audioPlayers[identifier] {
        player.stop()
        audioPlayers.removeValue(forKey: identifier)
    }
}
