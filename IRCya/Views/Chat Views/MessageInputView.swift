//
//  MessageInputView.swift
//  IRCya
//
//  Created by Michael Eisemann on 12/17/22.
//

import SwiftUI

struct MessageInputView: View {
    
    @State var message: String
    
    var body: some View {
        HStack(alignment: .bottom) {
            Button {
                print("camera tapped")
            } label: {
                Image(systemName: "camera.circle.fill")
                    .imageScale(.large)
                
            }
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $message, axis: .vertical)
            Spacer()
            Button {
                print("send tapped")
            } label: {
                Image(systemName: "arrow.up.circle.fill")
                    .imageScale(.large)
            }
        }
        .padding(4)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray)
        )
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(message: "so what happens when the message is really super duper long and things start asdfkjhasdkjfhaskdjhfakjsdhfkjasdhdfkjasdhfkjahsfdkto need to be wrapped what happens then?!")
    }
}
