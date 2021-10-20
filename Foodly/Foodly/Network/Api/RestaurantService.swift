//
//  RestaurantService.swift
//  Foodly
//
//  Created by Emmanuel Omokagbo on 6/21/21.
//

import Foundation

struct RestaurantService {
    let router = Router<RestaurantApi>()
    
    func getRestaurant(completion: @escaping NetworkRouterCompletion) {
        router.request(.getRestaurant, completion: completion)
    }
}
