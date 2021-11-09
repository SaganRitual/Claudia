// We are a way for the cosmos to know itself. -- C. Sagan

import SpriteKit
import SwiftUI

struct ArenaView: View {
    @EnvironmentObject var arenaScene: ArenaScene

    var body: some View {
        ZStack {
            SpriteView(scene: arenaScene)
                .scaledToFit()

            ForEach(0..<arenaScene.cLayers) { layerIx in
                LayerView()
                    .environmentObject(arenaScene.getLayer(layerIx))
            }
        }
    }
}

struct ArenaView_Previews: PreviewProvider {
    static var previews: some View {
        ArenaView()
    }
}
