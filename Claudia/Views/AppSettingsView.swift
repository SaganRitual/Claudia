// We are a way for the cosmos to know itself. -- C. Sagan

import SwiftUI

struct AppSettingsView: View {
    @EnvironmentObject var arenaScene: ArenaScene

    var body: some View {
        VStack {
            HStack {
                SettingsSliderView(
                    label: "Ring0 spin", range: -2...2,
                    value: $arenaScene.ring0SpinPeriod
                )
                    .padding(.trailing, 10)

                Text("\(arenaScene.ring0SpinPeriod.asString(decimals: 2)) Hz")
                    .padding(.trailing, 10)
            }

            HStack {
                SettingsSliderView(label: "Ring1 orbit", range: -2...2, value: $arenaScene.ring1OrbitalPeriod)
                    .padding(.trailing, 10)

                Text("\(arenaScene.ring1OrbitalPeriod.asString(decimals: 2)) Hz")
                    .padding(.trailing, 10)
            }

            HStack {
                SettingsSliderView(label: "Speed", range: 0...10, value: $arenaScene.simulationSpeed)
                    .padding(.trailing, 10)

                Text("\(arenaScene.simulationSpeed.asString(decimals: 2))")
                    .padding(.trailing, 10)
            }

            HStack {
                SettingsSliderView(label: "Zoom", range: 0.1...10, value: $arenaScene.zoomLevel)
                    .padding(.trailing, 10)

                Text("\(arenaScene.zoomLevel.asString(decimals: 2))")
                    .padding(.trailing, 10)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AppSettingsView()
    }
}
