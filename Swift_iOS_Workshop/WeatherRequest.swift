//
//  WeatherRequest.swift
//  Swift_iOS_Workshop
//
//  Created by pat on 19.03.2015.
//  Copyright (c) 2015 extrabright. All rights reserved.
//

import UIKit
import CoreLocation
import SwiftyJSON

class WeatherRequest: NSObject {
    
    private var latitude: Double
    private var longitude: Double
    
    var successBlock: (WeatherData -> ())? = nil
    var failureBlock: (NSError? -> ())? = nil
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func performRequest() {

        let urlStr = "http://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&lang=de&units=metric&APPID=3f32ae699559cc963085bac1b8d45a3d"
        let url = NSURL(string: urlStr)

        let request = NSMutableURLRequest(URL: url!)
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: {response, data, error in

            if data != nil && error == nil {
                let json = JSON(data:data!)
                NSLog("Received JSON: %@", json.description)
                
                let weatherData = WeatherData()
                
                weatherData.city = json["name"].stringValue
                
                weatherData.weather = json["weather"][0]["description"].stringValue
                weatherData.icon = json["weather"][0]["icon"].stringValue
                
                weatherData.temp = json["main"]["temp"].doubleValue
                weatherData.minTemp = json["main"]["temp_min"].doubleValue
                weatherData.maxTemp = json["main"]["temp_max"].doubleValue
                weatherData.humidity = json["main"]["humidity"].intValue

                if let successBlock = self.successBlock {
                    successBlock(weatherData)
                }
                
            }
            else {
                
                if let failureBlock = self.failureBlock {
                    failureBlock(error)
                }
                
            }

        })
    }
    
}
