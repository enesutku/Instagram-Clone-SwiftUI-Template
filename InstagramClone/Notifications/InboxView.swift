// Created by Enes UTKU

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                VStack {
                    ForEach(0 ..< 5) { notification in
                    InboxCell()
                    }
                    .padding(.bottom, 5)
                    
                    LazyVStack(spacing: 16) {
                        ForEach(0 ..< 5) { user in
                            UserCell()
                                .padding(.horizontal)
                        }
                    }
                    
                    ForEach(0 ..< 5) { notification in
                    InboxCell()
                    }
                    .padding(.bottom, 5)
                }
            }
                .navigationTitle("Inbox")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    InboxView()
}
