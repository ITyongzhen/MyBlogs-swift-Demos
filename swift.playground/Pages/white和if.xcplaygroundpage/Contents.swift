//: [Previous](@previous)

import UIKit
import PlaygroundSupport

let view = UIView()
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
view.backgroundColor = UIColor.red
PlaygroundPage.current.liveView = view



let vc = UITableViewController()
vc.view.backgroundColor = UIColor.lightGray
PlaygroundPage.current.liveView = vc


let a = 10
let b = 20
var c = a + b
c += 101
c += 20
print(c)

// 流程控制

let score = 70
if score >= 80 {
    print("优秀")
}else if score >= 60{
    print("及格")
}else{
    print("不及格")
}

//if score { //报错写法
//    print("s's")
//}


var num = 5
while num > 0 {
    print("num is \(num)")
    num -= 1
}// 会打印五次

var num2 = 5
repeat {
    print("num is \(num)")
}while num > 0// 会打印五次



//for
let persons = ["zhangsan","lisi","wanger","mazi"]
for i in 0...3 {
    print(persons[i])
}
//结果为
//zhangsan
//lisi
//wanger
//mazi

let range = 0...3
for i in range {
    print(persons[i])
}
//结果为
//zhangsan
//lisi
//wanger
//mazi


let before = 0
var end = 3
for i in before...end {
    print(persons[i])
}
//结果为
//zhangsan
//lisi
//wanger
//mazi

for i in before...3 {
    print(persons[i])
}

for i in 1..<3 {
    print(persons[i])
}
//结果为
//zhangsan
//lisi
//wanger

let nums = [1,2,3,4]
for num in nums[0...] {
    print(num)
}
//结果为
//1
//2
//3
//4












//: [Next](@next)
