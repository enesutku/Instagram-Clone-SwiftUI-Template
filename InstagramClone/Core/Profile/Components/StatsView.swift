// Created by Enes UTKU

import SwiftUI

struct StatsView: View {
    
    @State var statCount: String
    @State var statText: String
    
    var body: some View {
        VStack {
            Text(statCount)
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(statText)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    StatsView(statCount: "3", statText: "Posts")
}
