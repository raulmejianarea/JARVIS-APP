//
//  TextMessageView.swift
//  JARVIS
//
//  Created by raul Mejia on 7/8/23.
//

import SwiftUI
import SwiftOpenAI

struct TextMessageView: View {
    var message: MessageChatGPT
    var body: some View {
        HStack {
            if message.role == .user{
                Spacer()
                Text(message.text)
                    .multilineTextAlignment(.trailing)
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .background(
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.blue))
            }else {
                Text(message.text)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.all, 10)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.gray)
                    
                    )
                    .frame(maxWidth: 240, alignment: .leading)
                Spacer()
            }
                
            
        }
    }
}

struct TextMessageView_Previews: PreviewProvider {
    static let chatGPTMessage: MessageChatGPT = .init(text: "Hola swiftBeta, estoy aqui para ayudarte y contestar tus preguntas ", role: .system)
    
    static let MyMessage: MessageChatGPT = .init(text: "Cual es el equipo con mas champion en Europa?", role: .user)
    
    static var previews: some View {
        Group{
            TextMessageView(message: self.chatGPTMessage)
                .previewDisplayName("ChatGPT Message")
            TextMessageView(message: self.MyMessage)
                .previewDisplayName("My Message")

        }
        .previewLayout(.sizeThatFits)
    }
}
