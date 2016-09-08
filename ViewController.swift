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
        var c = "3"
        var d = "4"
        
        
        print("Address of c is : \(unsafeAddressOf(c))")
        print("Address of d is : \(unsafeAddressOf(d))")
        
        print("before swap，c's value is \(c),d's value is \(d)")
        swap(&c, d: &d)
        print("after swap，c's value is \(c),d's value is \(d)")
        print("Address of c is : \(unsafeAddressOf(c))")
        print("Address of d is : \(unsafeAddressOf(d))\n_____________________")
        
        
        var a = "1"
        var b = "2"
        
        print("Before swap\nAddress of a is : \(unsafeAddressOf(a))")
        print("Address of b is : \(unsafeAddressOf(b))")
        print("a's value is \(a),b's value is \(b)")
        (a,b)=(b,a)
        print("After swap\nAddress of a is : \(unsafeAddressOf(a))")
        print("Address of b is : \(unsafeAddressOf(b))")
        print("a's value is \(a),b's value is \(b)")
        
    
        
    }
    

    
    func swap<T>(inout c : T , inout d : T){
        let tmp = c
        c = d
        d = tmp
    }


}

