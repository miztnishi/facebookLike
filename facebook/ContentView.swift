//
//  ContentView.swift
//  facebook
//
//  Created by first on 2021/01/04.
//

import SwiftUI

// max View 10 count 

//hashable  unequable
struct FBModel:Hashable {
    let name:String
    let post:String
    let imageName:String
}

struct ContentView: View {
    
    @Binding var text:String
    let stories = ["story1","story2","story3","story1","story2","story3"]
    let facebookBlue = UIColor(red: 23/255.0
                               , green: 120/255.0
                               , blue: 242/255.0
                               , alpha: 1)
    
    let post:[FBModel] = [
        FBModel(name: "David Beckham",
                post: "David Beckham No7.England best free kick taker ",
                imageName: "person1"),
        FBModel(name: "CR7",
                post: "I　am the best football player of all time.",
                imageName: "person2"),
        FBModel(name: "Tomas Rosicky",
                post: "Little mozart",
                imageName: "person3")
    ]
    
    var body: some View {
        VStack{
            HStack{
                Text("facebook")
                    .font(.system(size: 40, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
                //Image(systemName: "person.fill.badge.plus")
            }
            .padding()
            
            TextField("Search...",text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                //真ん中を中心にしてpadding .horizontal
                .cornerRadius(13)
                .padding(.horizontal,15)
                //こっちで背景色を設定すると全体に適用される
                //.background(Color(.red))
            
            //重ねる表示できる
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical){
                    VStack{
                        
                        StoriesView(stories: stories)
                        
                        ForEach(post,id:\.self){ model in
                            FBPost(model: model)
                            Spacer()
                        }
                        
                        
                    }
                }
            }
            //1つ目のHstackをヘッダーに設定するためのspacer
            Spacer()
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
