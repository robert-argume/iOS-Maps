//
//  ViewController.swift
//  maps
//
//  Created by Robert Argume on 2018-04-16.
//  Copyright © 2018 Robert Argume. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    // Toronto 43.6532° N, 79.3832° W
    let defaultLongitude = -79.3832
    let defaultLatitude = 43.6532
    var delta = 0.5
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let mapLocation = CLLocationCoordinate2D(latitude: defaultLatitude, longitude: defaultLongitude)
//
        let loc = CLLocationCoordinate2D(latitude: defaultLatitude, longitude: defaultLongitude);
        
        let span = MKCoordinateSpanMake(delta, delta);
        
        let reg = MKCoordinateRegionMake(loc, span)
        
        self.map.region = reg
        
    }



}

