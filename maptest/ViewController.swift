//
//  ViewController.swift
//  maptest
//
//  Created by Rocky Demoff on 9/22/17.
//  Copyright © 2017 AirMap, Inc. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

	@IBOutlet weak var mapView: MGLMapView!
	
	var mapboxToken:String?
	var airMapAPIKey:String?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//		mapboxToken = "<# MapBoxToken #>"
		//		airMapAPIKey = "<# AirMapApiKey #>"
		
		guard let mapboxToken = mapboxToken else {
			fatalError("You need to set a MapBoxToken")
		}
		guard let airMapAPIKey = airMapAPIKey else {
			fatalError("You need to set an AirMap API Key.  You can get one by registering as a developer at https://developer.airmap.com")
		}
		
		MGLAccountManager.setAccessToken(mapboxToken)
		mapView.styleURL = URL(string: "https://api.airmap.com/maps/v4/tilejson/tfrs?&theme=standard&apikey=\(airMapAPIKey)")
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}
