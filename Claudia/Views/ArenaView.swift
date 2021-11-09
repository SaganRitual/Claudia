// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit
import SwiftUI

struct ArenaView: View {
    @StateObject var scene = ArenaScene()

    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .scaledToFit()

            ForEach(0..<scene.cLayers) { layerIx in
                LayerView()
                    .environmentObject(scene.getLayer(layerIx))
            }
        }
    }
}

struct ArenaView_Previews: PreviewProvider {
    static var previews: some View {
        ArenaView()
    }
}
