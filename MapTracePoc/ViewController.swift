//
//  ViewController.swift
//  MapTracePoc
//
//  Created by Fang Chen on 5/21/20.
//  Copyright © 2020 Fang Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BMKMapViewDelegate {

    var mapView: BMKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView = BMKMapView(frame: self.view.frame)
        mapView?.delegate = self
        self.view.addSubview(mapView!);
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView?.viewWillAppear()
        mapView?.zoomLevel = 17
        mapView?.mapType = BMKMapType.standard
        mapView?.setCenter(CLLocationCoordinate2DMake(, <#T##longitude: CLLocationDegrees##CLLocationDegrees#>), animated: <#T##Bool#>)
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mapView?.viewWillDisappear()
    }


}

