// Created by Enes UTKU

import SwiftUI

struct ExploreView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0)
    ]
    
    @State var fieldText = ""
    
    var body: some View {
        ScrollView {
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField(text: $fieldText) {
                        Text("Search")
                    }
                }
                .padding(7)
                .background(Color(.systemGray6))
                .clipShape(.rect(cornerRadius: 5))
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            .padding(.bottom, 5)
            
            LazyVGrid(columns: gridItems, spacing: 0, content: {
                ForEach(0...15, id: \.self) { index in
                    Image("post\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                        .clipped()
                }
                
            })
        }
    }
}

#Preview {
    ExploreView()
}
