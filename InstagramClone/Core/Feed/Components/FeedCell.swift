// Created by Enes UTKU

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("materprofile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("iammater")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(.black)
                })
            }
            
            Image("materpost")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400)
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })
                Button(action: {
                    
                }, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bookmark")
                        .imageScale(.large)
                })
            }
            .foregroundStyle(.black)
            
            HStack {
                Text("119 likes")
                    .font(.system(size: 16))
                .fontWeight(.semibold)
            
            Spacer()
            }
            .padding(.vertical, 1)
            
            HStack {
                Text("iammater")
                    .font(.system(size: 16))
                    .fontWeight(.semibold)
                Text("With my bestfriend McQueen!")
                    .font(.system(size: 15))
                
                Spacer()
            }
            .padding(.vertical, 3)
            
            HStack {
                Text("View 5 comment")
                    .font(.system(size: 15))
                    .foregroundStyle(Color(.systemGray2))
                
                Spacer()
            }
            
            HStack {
                Image("profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text("Add a comment...")
                    .font(.system(size: 14))
                    .foregroundStyle(Color(.systemGray2))
                
                Spacer()
            }
            
            HStack {
                Text("2 hours ago")
                    .font(.system(size: 12))
                    .foregroundStyle(Color(.systemGray2))
                
                    Spacer()
            }
            .padding(.bottom, 35)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    FeedCell()
}
