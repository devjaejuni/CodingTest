//
//  main.swift
//  Camoflage
//
//  Created by Kant on 2021/12/08.
//

import Foundation

// 프로그래머스 > 해시 > 위장

func solution(_ clothes:[[String]]) -> Int {
    
    var typeCount = [String: Int]()
    
    for cloth in clothes {
        if typeCount[cloth[1]] != nil {
            typeCount[cloth[1]]! += 1
        } else {
            typeCount[cloth[1]] = 1
        }
    }
    
    var count: Int = 1
    
    for (_, value) in typeCount {
        count *= (value + 1)
    }
    return count - 1
}

//solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]])
solution([["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]])
