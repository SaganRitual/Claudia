// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class Layer: ObservableObject {
    let ring: SKShapeNode

    init(parentSKNode: SKNode, color: SKColor, radius: Double) {
        ring = SKShapeNode(circleOfRadius: 0.5 * radius * parentSKNode.frame.width)
        ring.strokeColor = color
        ring.fillColor = .clear

        parentSKNode.addChild(ring)
    }
}
