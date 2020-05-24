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
        mapView?.zoomLevel = 20
        mapView?.mapType = BMKMapType.standard
        mapView?.setCenter(CLLocationCoordinate2DMake(30.207811, 120.220744), animated: true)
        
        let syncTile = MyLocalSyncTileLayer()
        syncTile.maxZoom = 21;
        //syncTile的最小Zoom值，默认3
        syncTile.minZoom = 20;
        mapView?.add(syncTile)
        
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mapView?.viewWillDisappear()
    }
    
    //MARK:BMKMapViewDelegate
    func mapView(_ mapView: BMKMapView!, viewFor overlay: BMKOverlay!) -> BMKOverlayView! {
        if overlay .isKind(of: BMKTileLayer.self) {
            let view: BMKTileLayerView = BMKTileLayerView.init(tileLayer: overlay as? BMKTileLayer)
            return view
        }
        return nil
    }


}

