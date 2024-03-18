//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Y K on 01.03.2024.
//

import SwiftUI

struct RipeningStagesView: View {
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
