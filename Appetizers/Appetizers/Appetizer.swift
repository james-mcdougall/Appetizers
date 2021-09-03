//
//  Appetizer.swift
//  Appetizers
//
//  Created by James McDougall on 9/3/21.
//

import Foundation

struct Appetizer: Codable, Identifiable {
	let id: Int
	let name: String
	let description: String
	let price: Double
	let imageURL: String
	let calories: Int
	let protein: Int
	let carbs: Int
}

struct AppetizerResponse: Codable {
	let request: [Appetizer]
}

struct MockData {
	static let sampleAppetizer = Appetizer(id: 0001,
										   name: "Test Appetizer",
										   description: "This is the description for my appetizers. It is yummy",
										   price: 9.99,
										   imageURL: "",
										   calories: 99,
										   protein: 99,
										   carbs: 99)
	
	static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}


