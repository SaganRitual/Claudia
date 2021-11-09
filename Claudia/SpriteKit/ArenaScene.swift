// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class ArenaScene: SKScene, ObservableObject {
    @Published var cLayers = 5
    @Published var layers = [Layer]()

    @Published var radiusFractions: [Double] = [
        0.95, 0.5, 0.5, 0.5, 0.5
    ]

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
                radius: radiusFractions[layers.count]
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
