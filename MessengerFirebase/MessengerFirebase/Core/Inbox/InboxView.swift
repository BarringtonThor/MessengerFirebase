//
//  InboxView.swift
//  MessengerFirebase
//
//  Created by Barrington Thorpe on 7/12/23.
//

import SwiftUI

struct InboxView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                        
                        Text("Chats")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print ("Show new message view")
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 32, height: 32)
                           .foregroundStyle(.black, Color(.systemGray5))
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
