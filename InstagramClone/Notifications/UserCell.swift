// Created by Enes UTKU

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            VStack(alignment: .leading, content: {
                Text("Test User")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                Text(" started following you!")
                    .font(.footnote)

            })
            
            Spacer()
            
            HStack(spacing: 14) {
                Text("Follow")
                    .frame(width: 80, height: 30)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(.rect(cornerRadius: 5))
                
                Image(systemName: "xmark")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    UserCell()
}
