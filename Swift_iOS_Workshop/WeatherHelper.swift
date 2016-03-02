//
//  WeatherHelper.swift
//  Swift_iOS_Workshop
//
//  Created by pat on 22.03.2015.
//  Copyright (c) 2015 extrabright. All rights reserved.
//

import UIKit

class WeatherHelper: NSObject {
   
    class func loadIcon(icon: String?, imageView: UIImageView) {
        if let icon = icon {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
                let urlStr = "http://openweathermap.org/img/w/\(icon).png"
                let url = NSURL(string: urlStr)
                if let data = NSData(contentsOfURL: url!) {
                    let image = UIImage(data: data)
                    dispatch_async(dispatch_get_main_queue()) {
                        imageView.image = image
                    }
                }
            }
        }
    }
    
}
