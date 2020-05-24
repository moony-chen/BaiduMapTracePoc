//
//  MyLocalSyncTileLayer.swift
//  MapTracePoc
//
//  Created by Fang Chen on 5/23/20.
//  Copyright © 2020 Fang Chen. All rights reserved.
//

import UIKit

class MyLocalSyncTileLayer: BMKSyncTileLayer {
    
    override func tileFor(x: Int, y: Int, zoom: Int) -> UIImage! {
        let imageName: String = String(format: "pft_%ld_%ld_%ld", arguments: [zoom, x, y])
        print([zoom, x, y])
        if let image: UIImage = UIImage(named: imageName) {
            return image
        } else {
            return nil
        }
    }

}
