// Created by Enes UTKU

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0),
        .init(.flexible(), spacing: 0)
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                // header
                VStack {
                    // picture and stats
                    HStack {
                        Image("profile")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            StatsView(statCount: "4", statText: "Posts")
                            StatsView(statCount: "52K", statText: "Followers")
                            StatsView(statCount: "8", statText: "Following")
                        }
                        
                    }
                    .padding(.horizontal)
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Lightning McQueen")
                            .fontWeight(.semibold)
                        
                        Text("Kachow! Winner of Piston Cup 🏆")
                        HStack {
                            Image(systemName: "paperclip")
                                .padding(.trailing, 1)
                            Text("mcqueen.com and 1 more")
                        }
                        .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    HStack {
                        Button(action: {
                            print("DEBUG: Edit Profile")
                        }, label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 160, height: 32)
                                .foregroundStyle(.black)
                                .background(Color(.systemGray6))
                                .clipShape(.rect(cornerRadius: 5))
                        })
                        
                        Button(action: {
                            print("DEBUG: Share Profile")
                        }, label: {
                            Text("Share Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 160, height: 32)
                                .foregroundStyle(.black)
                                .background(Color(.systemGray6))
                                .clipShape(.rect(cornerRadius: 5))
                        })
                        
                        Button(action: {
                            print("DEBUG: Add Friend")
                        }, label: {
                            Image(systemName: "person.fill.badge.plus")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 32, height: 32)
                                .foregroundStyle(.black)
                                .background(Color(.systemGray6))
                                .clipShape(.rect(cornerRadius: 5))
                        })
                    }
                    
                    Divider()
                    
                }
                // post grid view
                LazyVGrid(columns: gridItems, content: {
                    ForEach(1..<4) { index in
                        Image("post\(index)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3)
                            .clipped()
                    }
                    
                })
                Spacer()
            }
            .padding(.top, 20)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    })
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
