//
//  locationVC.swift
//  RunWay
//
//  Created by Biswajit Banik on 11/9/17.
//  Copyright © 2017 Biswajit Banik. All rights reserved.
//

import UIKit
import MapKit

class locationVC: UIViewController , MKMapViewDelegate {

    var manager : CLLocationManager?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness
    }
    
    func checklocationAuthStatus(){
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            manager?.requestWhenInUseAuthorization()
        }
        
        
        
        
    }

    
}
