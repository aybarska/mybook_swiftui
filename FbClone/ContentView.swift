//
//  ContentView.swift
//  FbClone
//
//  Created by Ayberk Mogol on 30.01.2022.


import SwiftUI

struct ContentView: View {
    
    @Binding var text: String
    
    let stories = ["story1", "story2", "story3","story4", "story5", "story6"]
    
    let fbBlue = UIColor(red: 23/255.0,
                         green: 120/255.0,
                         blue: 242/255.0,
                         alpha: 1)
    
    
    var body: some View {
        VStack {
            
            logoView()
                .padding()
            
            TextfieldView(text: .constant(""))
            
            ZStack{
                Color(.secondarySystemBackground)
                ScrollView(.vertical) {
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 3) {
                                ForEach(stories, id: \.self) {name in
                                    Image(name)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill )
                                        .frame(width: 140, height: 200, alignment: .center)
                                        .background(Color.gray)
                                        .clipped()
                                }
                            } .padding()
                        }
                        FBPost(name: "BrocColli", post: "나는 목요일 밤이 제일 좋아 :)", imageName: "person1", minute: "7")
                        
                        FBPost(name: "Border Collie", post: "물고기는 소중해 🐠", imageName: "person3", minute: "12")
                        
                        FBPost(name: "just Colli", post: "내일 대전 가야지 ^0^~", imageName: "person2", minute: "20")
                        
                        
                        Spacer()
                        
                    }
                }
            }
            Spacer()
        } // end Vstack
        
    }
}

struct FBPost: View {
    
    let name: String
    let post: String
    let imageName: String
    let minute: String
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text(minute + " Minute ago").foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            HStack {
                Text(post).font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            HStack {
                Button(action: {
                    isLiked.toggle()
                },label: {
                    Image(systemName: isLiked ? "heart.fill" : "heart")
                        .font(.title)
                })
                Spacer()
                Button(action: {
                    
                },label: {
                    Image(systemName:"text.bubble")
                        .font(.title)
                })
                Spacer()
                Button(action: {
                    
                },label: {
                    Image(systemName:"square.and.arrow.up")
                        .font(.title)
                })
            }.padding(.vertical)
        }.padding()
            .background(Color(.systemBackground))
            .cornerRadius(7)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}

