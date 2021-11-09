// We are a way for the cosmos to know itself. -- C. Sagan

import Combine
import SpriteKit
import SwiftUI

class ArenaScene: SKScene, ObservableObject {
    @Published var cLayers = 5
    @Published var layers = [Layer]()

    private let colors: [SKColor] = [
        .cyan, .magenta, .yellow, .red, .green
    ]

    override init() {
        super.init(size: ClaudiaApp.screenDimensions)
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addLayer() -> Layer {
        layers.append(
            Layer(
                parentSKNode: layers.last?.ring ?? self,
                color: colors[layers.count],
                radius: 1//radiusFractions[layers.count]
            )
        )

        cLayers = max(cLayers, layers.count)
        return layers.last!
    }

    func getLayer(_ layerIx: Int) -> Layer {
        if layerIx < layers.count {
            return layers[layerIx]
        } else {
            return addLayer()
        }
    }
}
