// Created by Enes UTKU

import SwiftUI

struct UploadPostView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0)
        
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                    .foregroundStyle(Color(.systemGray3))
                
                LazyVGrid(columns: gridItems, spacing: 0, content: {
                    ForEach(0...8, id: \.self) { index in
                        Image("post\(index)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                            .clipped()
                    }
                    
                })
            }
            .navigationTitle("New Post")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "xmark")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Text("Next")
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                }
            }
        }
    }
}

#Preview {
    UploadPostView()
}
