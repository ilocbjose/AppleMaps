//
//  NetworkManager.swift
//  Maps
//
//  Created by Apps2t on 01/02/2021.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import MapKit
import Alamofire

class NetworkManager:GoogleDirectionAPI {
    
    static let ACCESS_TOKEN = "AIzaSyDEWvDSyXxWe2Z3h5D1VizUUxaBE08FCU0"
    static let origin = "3.766878"
    static let destination = "43.464835, -3.795811"
    static let mode = "bicycling"
    
    func getRoute(origin: String, destination: String, completion: @escaping (MKPolyline) -> Void) {
        
        
        
        AF.request("http://maps.googleapis.com/maps/api/directions/json?origin="+NetworkManager.origin+"&destination="+NetworkManager.destination+"&mode="+NetworkManager.mode+"&key="+NetworkManager.ACCESS_TOKEN).response { response in
            debugPrint(response)
        }
        
    }
    
        
    static var shared:NetworkManager=NetworkManager()
    
    
    
}

protocol GoogleDirectionAPI {

func getRoute(origin: String, destination: String, completion: @escaping (MKPolyline)-> Void)
}
