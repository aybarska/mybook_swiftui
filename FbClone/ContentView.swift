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
                .padding()
                
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
                            } //scroll hikayeler
                        FBPost(name: "Ayberk Mogol", post: "Facebook ui clone calismasi. :)", imageName: "person1", minute: "7")
                        
                        FBPost(name: "Hamza Tester", post: "Lorem ipsum selam bir sonraki clone instagram olsun", imageName: "person3", minute: "12")
                        
                        FBPost(name: "Test Kullanici", post: "Test post fonksiyon :)", imageName: "person2", minute: "20")
                        
                        
                        Spacer()
                        
                        }
                    }
                }
            Spacer()
            } // end Vstack
            
        }
    }
        
struct FBPost: View { // gonderi kismi
     
    let name: String
    let post: String
    let imageName: String
    let minute: String
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack {
            HStack { //pp ve isim
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
                        Text(minute + " Dakika önce.").foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            HStack { // icerik
                Text(post).font(.system(size: 24, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            HStack { // begeni yorumlar paylas kismi
                Button(action: {
                    isLiked.toggle()
                },label: {
                    Text(isLiked ? "Liked" : "Like")
                })
                Spacer()
                Button(action: {
                    
                },label: {
                    Text("Yorum yap")
                })
                Spacer()
                Button(action: {
                    
                },label: {
                    Text("Paylas")
                })
            }.padding()
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
 
