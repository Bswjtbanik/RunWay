//
//  BegainVC.swift
//  RunWay
//
//  Created by Biswajit Banik on 11/9/17.
//  Copyright © 2017 Biswajit Banik. All rights reserved.
//

import UIKit
import MapKit

class BegainVC: locationVC {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        checklocationAuthStatus()
        mapView.delegate = self
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        manager?.startUpdatingLocation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }
    
    @IBAction func locationCenterbtnPress(_ sender: Any) {
       
    
    
    }

}
extension BegainVC: CLLocationManagerDelegate {
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse{
            
            checklocationAuthStatus()
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        }
    }
    
    
    
    
    
    
}

