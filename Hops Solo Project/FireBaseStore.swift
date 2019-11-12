//
//  FireBaseStore.swift
//  Hops Solo Project
//
//  Created by Kary Martinez on 11/12/19.
//  Copyright © 2019 Kary Martinez. All rights reserved.
//

//import Foundation
//
//import FireStore
//
//enum FireStoreCollections: String {
//    case users
//    //    case posts
//    //    case comments
//}
//
//class FirestoreService {
//    static let manager = FirestoreService()
//    
//    private let db = Firestore.firestore()
//    
//    //MARK: AppUsers
//    func createAppUser(user: AppUser, completion: @escaping (Result<(), Error>) -> ()) {
//        db.collection(FireStoreCollections.users.rawValue).document(user.uid).setData(user.fieldsDict) { (error) in
//            if let error = error {
//                completion(.failure(error))
//                print(error)
//            }
//            completion(.success(()))
//        }
//    }
//    
//    func getAllUsers(completion: @escaping (Result<[AppUser], Error>) -> ()) {
//        db.collection(FireStoreCollections.users.rawValue).getDocuments { (snapshot, error) in
//            if let error = error {
//                completion(.failure(error))
//            } else {
//                let users = snapshot?.documents.compactMap({ (snapshot) -> AppUser? in
//                    let userID = snapshot.documentID
//                    let user = AppUser(from: snapshot.data(), id: userID)
//                    return user
//                })
//                completion(.success(users ?? []))
//            }
//        }
//    }
//    
// 
//
//}
