//
//  DatabaseManager.swift
//  ins-clone
//
//  Created by Jinyun Wang on 12/3/20.
//

import FirebaseDatabase

public class Databasemanager{
    
    static let shared = Databasemanager()
    
    private let database = Database.database().reference()
    
    // MARK: - PUBLIC
    
    /// Check if username and email is available
    /// - Parameters
    ///     - email: String representing emila
    ///     - username: String representing username
    public func canCreateUser(with email: String, username: String, completion: (Bool) -> Void){
        completion(true)
    }
    
    /// Inserts new user data to database
    /// - Parameters
    ///     - email: String representing email
    ///     - username: String representing username
    ///     - completion: Async callback for result if database entry succeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void){
        database.child(email.safeDatabaseKey()).setValue(["username":username]) { (error, _) in
            if error == nil{
                //suceeded
                completion(true)
                return
            }
            else{
                //failed
                completion(false)
                return
            }
        }
    }

}
