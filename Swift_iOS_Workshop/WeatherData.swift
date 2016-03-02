//
//  WeatherData.swift
//  Swift_iOS_Workshop
//
//  Created by pat on 19.03.2015.
//  Copyright (c) 2015 extrabright. All rights reserved.
//

import UIKit

class WeatherData: NSObject {
   
    var city: String? = nil
    
    var weather: String? = nil
    var icon: String? = nil
    
    var temp: Double? = nil
    var minTemp: Double? = nil
    var maxTemp: Double? = nil
    var humidity: Int? = nil
    
    override var description: String {
        var str = "WeatherData{"
        str += "city: " + (city ?? "nil")
        str += ", weather: " + (weather ?? "nil")
        str += ", icon: " + (icon ?? "nil")
        str += ", temp: \(temp ?? 0.0)"
        str += ", min temp: \(minTemp ?? 0.0)"
        str += ", max temp: \(maxTemp ?? 0.0)"
        str += ", humidity: \(humidity ?? 0)}"
        return str
    }
    
    // MARK: - helper computed properties for humidity & temp
    
    var formattedHumidity: String {
        return humidity != nil ? "\(humidity!)%" : "--%"
    }

    var formattedTemp: String {
        return formattedTempString(self.temp)
    }
    
    var formattedMinTemp: String {
        return formattedTempString(self.minTemp)
    }
    
    var formattedMaxTemp: String {
        return formattedTempString(self.maxTemp)
    }

    // MARK: - helper format method for temperature
    
    /**
     * Returns the given double as formatted temperature string, e.g. 5.4 -> "5˚"
     */
    private func formattedTempString(temp: Double?) -> String {
        return temp != nil ? String(format: "%.0f\u{00b0}", temp!) : "--\u{00b0}"
    }

}
