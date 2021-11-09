// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct SettingsSliderView: View {
    let label: String
    let range: ClosedRange<Double>

    @Binding var value: Double

    var body: some View {
        HStack {
            Text(label)
                .frame(width: 100, height: nil, alignment: .leading)
                .padding(.leading)

            Slider(
                value: $value,
                in: range
            ) {
                print("Is editing \($0); value = \(value)")
            }
                .padding(.trailing, 10)
        }
    }
}

struct AppSettingsSliderView_Previews: PreviewProvider {
    @State static var ring0SpinPeriod = 0.0

    static var previews: some View {
        SettingsSliderView(
            label: "Zoom",
            range: 1...10,
            value: $ring0SpinPeriod
        )
    }
}
