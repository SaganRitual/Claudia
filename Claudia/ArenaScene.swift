// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit

class ArenaScene: SKScene, ObservableObject {
    @Published var cLayers = 2
    @Published var layers = [Layer]()

    override init() {
        super.init(size: CGSize(width: 500, height: 500))
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addLayer() -> Layer {
        layers.append(Layer(parentSKNode: layers.last?.ring ?? self))
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
