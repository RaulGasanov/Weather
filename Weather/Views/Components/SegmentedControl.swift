//
//  SegmentedControl.swift
//  Weather
//
//  Created by Raul_Gasanov on 17.10.2022.
//

import SwiftUI

struct SegmentedControl: View {
    @Binding var selection: Int
    
    var body: some View {
        VStack(spacing: 5) {
            // MARK: Segmented Buttons
            HStack {
                Button {
                    selection = 0
                } label: {
                    Text("Hourly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                
                Button {
                    selection = 1
                } label: {
                    Text("Weekly Forecast")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .font(.subheadline.weight(.semibold))
            .foregroundColor(.secondary)
        }
        .padding(.top, 25)
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl(selection: .constant(0))
    }
}
