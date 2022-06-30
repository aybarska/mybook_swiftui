//
//  logoView.swift
//  FbClone
//
//  Created by 김소현 on 2022/06/12.
//

import SwiftUI

struct logoView: View {
    
    let fbBlue = UIColor(red: 23/255.0,
                         green: 120/255.0,
                         blue: 242/255.0,
                         alpha: 1)
    // color custom
    
    var body: some View {
        HStack{
            
            Spacer()
            
            Text("Colli Book").font(.system(size: 43, weight: .bold, design: .default))
                .foregroundColor(Color(fbBlue))
                .frame(width: 300, height: 50, alignment: .leading)
            
            Spacer()
            
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(Color(.secondaryLabel))
            
            Spacer()
            
        }
    }
    
}


struct logoView_Previews: PreviewProvider {
    static var previews: some View {
        logoView()
    }
}
