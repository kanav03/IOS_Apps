//
//  DataModel 3.swift
//  CollectionViewFlowlayoutPart2
//
//  Created by admin34 on 01/11/24.
//


class DataModel {
    // Store both photo ID and name as a tuple
    private var photos = [
        ("54074283637", "2BHK"),
        ("54074298457", "3BHK"),
        ("54074652023", "Studio"),
        // Add more tuples as needed for each image
    ]
    
    // Function to return all photo tuples
    func getPhotos() -> [(id: String, name: String)] {
        return photos
    }
    
    // Function to get a specific photo by index
    func getPhoto(at index: Int) -> (id: String, name: String) {
        return photos[index]
    }
}
