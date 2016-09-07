//
//  ViewController.swift
//  test
//
//  Created by ling toby on 9/7/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var c = "c"
        var d = "d"
        
        
        print("Address of c is : \(unsafeAddressOf(c))")
        print("Address of d is : \(unsafeAddressOf(d))")
        
        print("before swap，c's value is \(c),d's value is \(d)")
        swap(&c, d: &d)
        print("after swap，c's value is \(c),d's value is \(d)")
        print("Address of c is : \(unsafeAddressOf(c))")
        print("Address of d is : \(unsafeAddressOf(d))")
    }
    

    
    func swap<T>(inout c : T , inout d : T){
        let tmp = c
        c = d
        d = tmp
    }


}

