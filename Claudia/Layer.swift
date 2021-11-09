// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class Layer: ObservableObject, Identifiable {
    let id = UUID()

    @Published var showCenters = true
    @Published var showPen = true
    @Published var showRadius = true
    @Published var showRing = true

    @Published var parentRadius: Double
    @Published var penLength = 1.0
    @Published var radiusFraction: Double

    let ring: SKShapeNode

    init(parentSKNode: SKNode, color: SKColor, radiusFraction: Double) {
        let parentRadius = parentSKNode.frame.width / 2

        ring = SKShapeNode(circleOfRadius: radiusFraction * parentRadius)
        ring.strokeColor = color
        ring.fillColor = .clear

        parentSKNode.addChild(ring)

        self.radiusFraction = radiusFraction
        self.parentRadius = parentRadius
    }
}
