// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class Layer: ObservableObject {
    let ring: SKShapeNode

    init(parentSKNode: SKNode) {
        ring = SKShapeNode(circleOfRadius: 50)
        ring.strokeColor = .white
        ring.fillColor = .purple

        parentSKNode.addChild(ring)
    }
}
