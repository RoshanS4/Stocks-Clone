//
//  MarketDataResponse.swift
//  Stocks
//
//  Created by Roshan Seth on 9/19/22.
//

import Foundation


struct MarketDataResponse: Codable {
    let c: [Double]
    let h: [Double]
    let l: [Double]
    let o: [Double]
    let s: String
    let t: [TimeInterval]
    
    
    
    
        var candleSticks: [CandleStick] {
            var result = [CandleStick]()
    
            for index in 0..<o.count {
                result.append(
                    .init(
                        date: Date(timeIntervalSince1970: t[index]),
                        high: h[index],
                        low: l[index],
                        open: o[index],
                        close: c[index]))
            }
            let sortedData = result.sorted(by: {$0.date > $1.date})
    
    
            return sortedData
        }
    
    }
    
    
    struct CandleStick {
        let date: Date
        let high: Double
        let low: Double
        let open: Double
        let close: Double
    }
    

