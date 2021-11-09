// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct LayerView: View {
    @EnvironmentObject var layer: Layer

    var body: some View {
        Rectangle().foregroundColor(.clear)
    }
}

struct LayerView_Previews: PreviewProvider {
    static var previews: some View {
        LayerView()
    }
}
