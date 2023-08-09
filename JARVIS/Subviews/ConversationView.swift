//
//  ConversationView.swift
//  JARVIS
//
//  Created by raul Mejia on 8/8/23.
//

import SwiftUI

struct ConversationView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        ScrollView{
            ForEach(viewModel.messages){
                message in
                TextMessageView(message: message)
            }
        }
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView().environmentObject(ViewModel())
    }
}
