// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct LayerSlidersGroupView: View {
    @EnvironmentObject var layer: Layer

    var body: some View {
        VStack {
            HStack {
                SettingsSliderView(label: "Pen", range: 0.1...10, value: $layer.penLength)

                Text("\(layer.penLength.asString(decimals: 2))")
                    .padding(.trailing, 10)
            }

            HStack {
                SettingsSliderView(label: "Radius", range: 0.1...10, value: $layer.radiusFraction)

                Text("\(layer.radiusFraction.asString(decimals: 2))")
                    .padding(.trailing, 10)
            }
        }
    }
}

//struct LayerSlidersGroupView_Previews: PreviewProvider {
//    static var previews: some View {
//        LayerSlidersGroupView()
//            .environmentObject(Layer(parentSKNode: <#T##SKNode#>, color: <#T##SKColor#>, radius: <#T##Double#>)
//    }
//}
