//
//  UserDefaultsRepository.swift
//  DrinksApp
//
//  Created by Nikola Dojchinovski on 24.4.23.
//

import Foundation

class UserDefaultRepository {
    
    enum Constants {
        case review
        
        var key: String {
            switch self {
            case .review:
                return "review value key"
            }
        }
    }
    
    static func getReviewValue() -> String? {
        UserDefaults.standard.string(forKey: Constants.review.key)
    }
    
    static func updateReview(_ value: String) {
        UserDefaults.standard.setValue(value, forKey: Constants.review.key)
    }
}
