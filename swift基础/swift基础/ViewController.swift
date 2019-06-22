//
//  ViewController.swift
//  swift基础
//
//  Created by eagle on 2019/6/22.
//  Copyright © 2019 yongzhen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print(sum(2,5))
        let k = sum(a: 2, b: 8)
        print(k)
        
        goToWork(at: "19:39")
        check(age: 22)
        print(sum(1,2,3))
        var num1 = 10
        var num2 = 20
        swapValues2(&num1, &num2)
        print("num1 = \(num1), num2 = \(num2)")
    }
    
    
    // typealias用来给类型起别名
    typealias Byte = Int8
    typealias Short = Int16
    typealias Long = Int64
    typealias Date = (year: Int, month: Int, day: Int)
    func test(_ date: Date) {
        print(date.0)
        print(date.year)
        
    }
    
//    n 将函数定义在函数内部
//    func forward(_ forward: Bool) -> (Int) -> Int { func next(_ input: Int) -> Int {
//        input + 1 }
//        func previous(_ input: Int) -> Int { input - 1
//        }
//        return forward ? next : previous
//    }
//    forward(true)(3) // 4
//    forward(false)(3) // 2
   
    
    
    
//    test((2011, 9, 10))
//    n 按照Swift标准库的定义，Void就是空元组()
//    typealias IntFn = (Int, Int) -> Int
//    func difference(v1: Int, v2: Int) -> Int { v1 - v2
//    }
//    let fn: IntFn = difference
//    fn(20, 10) // 10
//    func setFn(_ fn: IntFn) {
//
//    }
//    setFn(difference)
//    func getFn() -> IntFn {
//        difference
//
//    }
    public typealias Void = ()

    
    
//    func next(_ input: Int) -> Int {
//        input + 1
//    }
//    func previous(_ input: Int) -> Int {
//        input - 1 }
//    func forward(_ forward: Bool) -> (Int) -> Int {
//        forward ? next : previous
//    }
//    //调用
//    forward(true)(3) // 4  相当于 调用 next(3)
//    forward(false)(3) // 2 相当于 调用 previous(3)
    
  
    
    
//    func sum(v1: Int, v2: Int) -> Int {
//        v1 + v2
//    }
//    func difference(v1: Int, v2: Int) -> Int {
//        v1 - v2
//
//    }
//    // 用一个函数类型作为参数 上面两个函数类型都是 (Int, Int) -> Int
//    func printResult(_ mathFn: (Int, Int) -> Int, _ a: Int, _ b: Int) { print("Result: \(mathFn(a, b))")
//    }
//    printResult(sum, 5, 2) // Result: 7
//    printResult(difference, 5, 2) // Result: 3

    
    
    
//    n 每一个函数都是有类型的，函数类型由形式参数类型、返回值类型组成
//    func test() { } // () -> Void 或者 () -> ()
//    func sum(a: Int, b: Int) -> Int {
//        a+b
//    } // (Int, Int) -> Int
//    // 定义变量
//    var fn: (Int, Int) -> Int = sum
//    调用: fn(2, 3)
 
    
    
//    //可变参数、省略参数标签、函数重载一起使用产生二义性时，编译器有可能会报错
//    func sum(v1: Int, v2: Int) -> Int { v1 + v2
//    }
//    func sum(_ v1: Int, _ v2: Int) -> Int {
//        v1 + v2 }
//    func sum(_ numbers: Int...) -> Int { var total = 0
//        for number in numbers {
//            total += number
//        }
//        return total
//    }
//    // error: ambiguous use of 'sum'
//    sum(10, 20)
//
    
    
//    // 默认参数值和函数重载一起使用产生二义性时，编译器并不会报错(在C++中会报错)
//    func sum(v1: Int, v2: Int) -> Int {
//        v1 + v2
//    }
//    func sum(v1: Int, v2: Int, v3: Int = 10) -> Int {
//        v1 + v2 + v3
//
//    }
//    // 会调用sum(v1: Int, v2: Int) sum(v1: 10, v2: 20)
   
    
    
    
    
    
    func swapValues(_ v1: inout Int, _ v2: inout Int) {
        let tmp = v1
        v1 = v2
        v2 = tmp
    }
   
   
    
    func swapValues2(_ v1: inout Int, _ v2: inout Int) {
        (v1, v2) = (v2, v1)
    }

    
    // 可变参数
    func sum(_ numbers: Int...) -> Int{
        var total = 0
        for num in numbers {
            total += num
        }
        return total
    }
    
    func test(_ numers: Int..., string: String) -> Void {
        
    }
    
    
    // 默认参数值
    func check(name: String = "jack", age: Int, job: String = "teacher") {
        print("name = \(name), age = \(age), job = \(job)")
    }
    
    // 参数标签
//    可以修改参数标签
    func goToWork(at time: String) -> () {
        print("this time is \(time)")
    }
    
//    可以使用下划线 _ 省略参数标签
    func sum2(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func calculate(a: Int, b: Int) -> (sum: Int, average: Int) {
        let sum = a + b
        return (sum, sum >> 1)
    }
    
    
    func pi() -> Double{
        return 3.1415
    }
    
    
    /// 计算两个数之和
    ///
    /// - Parameters:
    ///   - a: 第一个参数
    ///   - b: 第二个参数
    /// - Returns: 返回两个参数之和
    func sum(a: Int, b: Int) -> Int {
        return a + b
    }
    
}

