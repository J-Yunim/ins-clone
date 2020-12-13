//
//  DatabaseManager.swift
//  ins-clone
//
//  Created by Jinyun Wang on 12/3/20.
//

import FirebaseAuth

public class AuthManager{
    static let shared = AuthManager()
    
    // MARK: - PUBLIC
    
    public func registerNewUser(username: String, email: String, password:String, completion: @escaping (Bool) -> Void){
        /*
         - Check if username is available
         - Check if email is available
         */
        Databasemanager.shared.canCreateUser(with: email, username: username) { (canCreate) in
            if canCreate {
                /*
                 - Create account
                 - Insert account to database
                 */
                Auth.auth().createUser(withEmail: email, password: password) {result, error in
                    guard error == nil, result != nil else{
                        // Firebase could not create account
                        completion(false)
                        return
                    }
                    
                    // Insert into Database
                    Databasemanager.shared.insertNewUser(with: email, username: username) { (inserted) in
                        if inserted {
                            completion(true)
                            return
                        } else{
                            completion(false)
                            return
                        }
                    }
                }
            }
            else {
                //wither username or email doesn't exist
                completion(false)
            }
        }
        
    }
    
    public func loginUser(username: String?, email: String?, password:String, completion: @escaping (Bool) -> Void){
        if let email = email{
            //emial login
            Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
                guard authResult != nil, error == nil else{
                    completion(false)
                    return
                }
                
                completion(true)
            }
            
        }
        else if let username = username{
            print(username)
        }
    }
    
    /// Attempt to log out firebase user
    public func logOut(completion: (Bool) -> Void){
        do {
            try Auth.auth().signOut()
            completion(true)
            return
        }
        catch{
            print(error)
            completion(false)
            return
        }
    }
}
