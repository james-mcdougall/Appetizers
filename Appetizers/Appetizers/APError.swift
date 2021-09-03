//
//  APError.swift
//  Appetizers
//
//  Created by James McDougall on 9/3/21.
//

import Foundation

enum APError: Error {
	case invalidURL
	case invalidResponse
	case invalidData
	case unableToComplete
}
