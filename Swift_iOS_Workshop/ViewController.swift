//
//  ViewController.swift
//  Swift_iOS_Workshop
//
//  Created by pat on 15.03.2015.
//  Copyright (c) 2015 extrabright. All rights reserved.
//

import UIKit
import CoreLocation

/*
 * Brugg AG: 47.479501, 8.213011
 */

class ViewController: UIViewController, CLLocationManagerDelegate {
    let locationManager = CLLocationManager()
    
    private var weatherRequest: WeatherRequest? = nil
    private var location: CLLocation? = nil
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var minTempLabel: UILabel!
    @IBOutlet weak var maxTempLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
    }
    
    private func checkPermission() {
        NSLog("Checking permission")
        switch(CLLocationManager.authorizationStatus()) {
        case .Denied:
            showDeviceNotAllowed()
        case .Restricted:
            showDeviceNotAllowed()
        case .NotDetermined:
            askForPermission()
        case .AuthorizedWhenInUse:
            startLocationRequest()
        default:
            NSLog("other status, do nothing")
        }
    }
    
    private func showDeviceNotAllowed() {
        UIAlertView(title: "Oops", message: "Die Standortbestimmung ist für die App nicht freigegeben", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    private func askForPermission() {
        NSLog("Requesting permission")
        locationManager.requestWhenInUseAuthorization()
    }
    
    private func startLocationRequest() {
        NSLog("Start location request")
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.startUpdatingLocation()
    }

    
    // MARK: - methods from CLLocationManagerDelegate
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count == 0 || self.location != nil {
            return
        }

        let location = locations[0]
        NSLog("Received location %@", location)
        
        self.location = location
        locationManager.stopUpdatingLocation()
        
        performServerRequest()
    }
    
    private func performServerRequest() {
        // TODO
    }
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        NSLog("Did change authorization")
        if status == CLAuthorizationStatus.AuthorizedWhenInUse {
            startLocationRequest()
        }
    }

    @IBAction func reloadPressed(sender: AnyObject) {
        // TODO
    }
}

