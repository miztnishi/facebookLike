//
//  FBpostView.swift
//  facebook
//
//  Created by first on 2021/01/05.
//

import Foundation
import SwiftUI

struct FBPost:View {
    
    //islikedの状態を保持
    @State var isLiked:Bool = false
    
    var model:FBModel

    
    var body: some View{
        VStack{
            HStack{
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack{
                        Text("football player")
                            .foregroundColor(.secondary)
                        Spacer()
                    }
                }
                Spacer()
            }
            Spacer()
            
            HStack{
                Text(model.post)
                    .font(.system(size: 20, weight: Font.Weight.regular, design: .default))
                    //文字列折り返し
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    //.lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    
                Spacer()
            }
            
            Spacer()
            
            HStack{
                Button(action: {
                    //　isLiked = !isliked
                    isLiked.toggle()
                }, label: {
                    Text(isLiked ? "Liked" : "Like")
                        .foregroundColor(isLiked ? Color(.systemRed) : Color(.systemBlue))
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("comment")
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("share")
                })
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}

