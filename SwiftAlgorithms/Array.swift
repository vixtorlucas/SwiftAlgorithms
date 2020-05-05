//
//  Array.swift
//  SwiftAlgorithms
//
//  Created by Vixtor on 2020-05-03.
//  Copyright © 2020 VixtorDev. All rights reserved.
//

import Foundation

public extension Array where Element:Comparable{
    func mergeSort() -> Array {
        if self.count == 1{
            return self
        }
        let half = count / 2
        let head = Array(self[0..<half]).mergeSort()
        let tail = Array(self[half..<count]).mergeSort()

        return head.merge(with: tail)
    }
    
    func insertionSort() -> Array{
        var index = 0
        var array = self
        for i in 1..<array.count{
            let key = array[i]
            index = i - 1
            while index > -1 && array[index] > key{
                array[index + 1] = array[index]
                index = index - 1
            }
            array[index + 1] = key
        }
        return array
    }
    
    private func merge(with: Array) -> Array{
        
        var head = self
        var tail = with
        var sortedArray = [Element]()
        while head.count != 0 || tail.count != 0{
            if head.count == 0{
                sortedArray.append(tail[0])
                tail.remove(at: 0)
            }else if tail.count == 0{
                sortedArray.append(head[0])
                head.remove(at: 0)
            }else{
                if head[0] < tail[0] {
                    sortedArray.append(head[0])
                    head.remove(at: 0)
                }else if head[0] > tail[0] {
                    sortedArray.append(tail[0])
                    tail.remove(at: 0)
                }else{
                    sortedArray.append(head[0])
                    head.remove(at: 0)
                    sortedArray.append(tail[0])
                    tail.remove(at: 0)
                }
            }
        }
        return sortedArray
    }
    
}
