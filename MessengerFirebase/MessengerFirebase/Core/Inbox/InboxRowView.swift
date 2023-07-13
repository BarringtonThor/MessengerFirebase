//
//  InboxRowView.swift
//  MessengerFirebase
//
//  Created by Barrington Thorpe on 7/12/23.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundColor(Color(.systemGray4))
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Quentin Thor")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Some test message for now")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
        }
    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
