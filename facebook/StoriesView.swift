//
//  StoriesView.swift
//  facebook
//
//  Created by first on 2021/01/05.
//

import Foundation
import SwiftUI

struct StoriesView :View {
    
    let stories:[String]
    var body: some View{
       
        //横方向のスクロール
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:3){
                ForEach(stories, id: \.self){ name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(Color.red)
                        .clipped()
                }
               
            }
            .padding()
        }
    }
}
