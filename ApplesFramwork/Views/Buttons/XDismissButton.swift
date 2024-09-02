//
//  XDismissButton.swift
//  ApplesFramwork
//
//  Created by Vivek  Garg on 30/08/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }.padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
