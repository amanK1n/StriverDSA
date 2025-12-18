//
//  ViewController.swift
//  DSA-Practice
//
//  Created by Sayed on 19/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       print("Hello hell!!")
        
        
        let nums1 = [1, 2, 3, 4, 5]
        let nums2 = [1, 2, 7]

        var i = 0
        var j = 0

        var result: [Int] = []
print(nums1.count)
print(nums2.count)
        while i < nums1.count && j < nums2.count {
            print("In -loop")
            if nums1[i] <= nums2[j] {
                if result.last != nums1[i] {
                    result.append(nums1[i])
                }
                    i += 1
                
            } else {
                if result.last != nums2[j] {
                    result.append(nums2[j])
                }
                    j += 1
                
            }
            
            
        }
        
        while i < nums1.count {
            if result.last != nums1[i] {
                result.append(nums1[i])
            }
                i += 1
            
            
            
        }
        
        
        while j < nums2.count {
            if result.last != nums2[j] {
                result.append(nums2[j])
            }
            j += 1
            
            
            
        }
        
        
        print("Printing..")
        print(result)
        
        
    }


}

