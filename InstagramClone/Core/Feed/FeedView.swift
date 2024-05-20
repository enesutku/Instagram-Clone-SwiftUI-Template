// Created by Enes UTKU

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0...10, id: \.self) { post in
                            ZStack {
                                Circle()
                                    .stroke(lineWidth: 5)
                                    .foregroundStyle(.linearGradient(colors: [.pink, .purple, .red, .orange, .yellow], startPoint: .topTrailing, endPoint: .bottomLeading))
                                
                                Image(systemName: "person.circle.fill")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                .foregroundStyle(Color(.systemGray5))
                            }
                        }
                    }
                    .padding()
                }
                LazyVStack {
                    ForEach(0...10, id: \.self) { post in
                        FeedCell()
                    }
                    .padding(.top, 1)
                }
                .navigationTitle("Feed")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                           Image("iglogo")
                            .resizable()
                            .frame(width: 100, height: 32)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                           Image(systemName: "paperplane")
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
