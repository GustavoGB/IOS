//
//  PhotoFactory.swift
//  CollectionViewAssignment
//
//  Created by Derrick Park on 2018-10-29.
//  Copyright © 2018 Derrick Park. All rights reserved.
//

import Foundation

struct PhotoFactory {
	var images = [Photo]()
    
    var bySubjects = [String:[Photo]]()
    var byLocations = [String:[Photo]]()
	init() {
		images += [
			Photo(subject: "Draw",location: "Disney land", imageName: "kitty1"),
            
			Photo(subject: "Draw",location: "Bahamas", imageName: "kitty2"),
            
			Photo(subject: "Draw",location: "Chiang Mai", imageName: "kitty3"),
            
			Photo(subject: "Draw",location: "Hoi An", imageName: "kitty4"),
            
			Photo(subject: "Draw",location: "Indonesia", imageName: "kitty5"),
            
            Photo(subject: "Food",location: "Italy", imageName: "pasta"),
            
            Photo(subject: "City",location:"Brazil", imageName: "sp"),
            
            Photo(subject: "City",location: "Canada", imageName: "van"),
            
            Photo(subject: "Food",location: "Japan", imageName: "shusi")
		]
        let subjects = images.map { (photo) -> String in
            return photo.subject
        }
        let uniqueSubjects = Array(Set(subjects))
        for subject in uniqueSubjects {
            let photos = images.filter { $0.subject == subject}
            self.bySubjects[subject] = photos
        }
        let locations = images.map { (photo) -> String in
            return photo.location
        }
        
        let uniqueLocations = Array(Set(locations))
        for location in uniqueLocations {
            let photos = images.filter { $0.location == location}
            self.byLocations[location] = photos
        }
	}
	
}
