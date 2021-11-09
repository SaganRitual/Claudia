// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct LayerToggleGroupView: View {
    @EnvironmentObject var layer: Layer

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                SettingsToggleView(isChecked: $layer.showPen, label: "Pen")
                SettingsToggleView(isChecked: $layer.showRadius, label: "Radius")
            }
            .frame(width: 100)

            VStack(alignment: .leading) {
                SettingsToggleView(isChecked: $layer.showCenters, label: "Centers")
                SettingsToggleView(isChecked: $layer.showRing, label: "Ring")
            }
            .frame(width: 100)
        }
    }
}
//
//struct LayerToggleGroupView_Previews: PreviewProvider {
//    static var previews: some View {
//        LayerToggleGroupView().environmentObject(LayerSettings(.blue))
//    }
//}
