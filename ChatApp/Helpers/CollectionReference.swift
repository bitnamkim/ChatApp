//
//  CollectionReference.swift
//  ChatApp
//
//  Created by Pigman on 23/05/2019.
//  Copyright © 2019 Pigman. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
    case User
    case Typing
    case Recent
    case Message
    case Group
    case Call
}

//  파라미터 타입 : FCollectionReference
//  리턴 타입 :  클래스
func reference(_ collectionReference: FCollectionReference) -> CollectionReference {
    return Firestore.firestore().collection(collectionReference.rawValue)
}
