//
//  ViewController.swift
//  PricePower
//
//  Created by Hevin Jant on 9/11/18.
//  Copyright © 2018 Hevin Jant. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    let url = "https://hdp44.demo.datadirect.com/api/odata4/hackathon"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Setting up Alamofire
    func getJSON(url: String) {
        let username = "apiworld6"
        let password = "Hackathon1"
        
        let credential = URLCredential(user: username, password: password, persistence: URLCredential.Persistence.forSession)
        
        Alamofire.request("https://hdp44.demo.datadirect.com/api/odata4/hackathon/\(username)/\(password)", method: .get)
            .authenticate(usingCredential: credential)
            .responseString { result in
                if let receivedString = result.value
                {
                    print(receivedString)
                }
        }
        
//        let user = "apiworld6"
//        let password = "Hackathon1"
//        let credentialData = "\(user):\(password)".data(using: String.Encoding.utf8)!
//        let base64Credentials = credentialData.base64EncodedString(options: [])
//        let headers = ["Authorization": "Basic \(base64Credentials)"]
//
//        Alamofire.request(url,
//                          method: .get,
//                          parameters: nil,
//                          encoding: URLEncoding.default,
//                          headers:headers)
//            .validate()
//            .responseJSON { response in
//                if response.result.value != nil{
//                    print(response)
//                }else{
//
//                }
//        }
        
//        Alamofire.request(url, method: .get).responseJSON {
//            response in
//            if response.result.isSuccess {
//                let dataJSON = JSON(response.result.value!)
//                print("Data Received: \(dataJSON)")
//
//
//                print(dataJSON)
//            }
//            else {
//                print("No connection: \(response.result.error)")
//            }
//        }
    }
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        
        getJSON(url: url)
        //declare parameter as a dictionary which contains string as key and value combination. considering inputs are valid
        
//        let parameters = ["id": "apiworld6", "name": "Hackathon1"] as [String : Any]
//
//        //create the url with URL
//        //let url = URL(string: "https://hdp44.demo.datadirect.com/api/odata4/hackathon")! //change the url
//
//        //create the session object
//        let session = URLSession.shared
//
//        //now create the URLRequest object using the url object
//        var request = URLRequest(url: URL(string: url)!)
//        request.httpMethod = "POST" //set http method as POST
//
//        do {
//            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
//        } catch let error {
//            print(error.localizedDescription)
//        }
//
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        request.addValue("application/json", forHTTPHeaderField: "Accept")
//
//        //create dataTask using the session object to send data to the server
//        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
//
//            guard error == nil else {
//                return
//            }
//
//            guard let data = data else {
//                return
//            }
//
//            do {
//                //create json object from data
//                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//                    print(json)
//                    print("Test")
//                    // handle json...
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//        })
//        task.resume()
    }

}

