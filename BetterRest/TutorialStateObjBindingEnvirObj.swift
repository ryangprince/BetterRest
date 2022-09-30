//
//  TutorialStateObjBindingEnvirObj.swift
//  BetterRest
//
//  Created by Ryan Prince on 9/8/22.
//

import Combine
import SwiftUI

class UserInfo: ObservableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var username = "@twostraws" { didSet { didChange.send()}}
    var password = "fr0sti3s" { didSet { didChange.send()}}
    var emailAddress = "paul@hackingwithswift.com" { didSet { didChange.send()}}
}

struct TutorialStateObjBindingEnvirObj: View {
    @ObservedObject var user = UserInfo()
    
    var body: some View {
        VStack {
            TextField("Username", text: $user.emailAddress)
            TextField("Password", text: $user.password)
            TextField("Email Address", text: $user.emailAddress)
        }
    }
}

struct TutorialStateObjBindingEnvirObj_Previews: PreviewProvider {
    static var previews: some View {
        TutorialStateObjBindingEnvirObj()
    }
}
