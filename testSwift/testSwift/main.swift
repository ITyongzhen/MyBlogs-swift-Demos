//
//  main.swift
//  testSwift
//
//  Created by eagle on 2019/6/29.
//  Copyright © 2019 yongzhen. All rights reserved.
//

import Foundation


class Circle {
    var radius: Int {
        set {
            print("Circle setRadius", newValue)
        }
        get {
            print("Circle getRadius")
            return 20
        }
    }
}
class SubCircle : Circle {
    override var radius: Int {
        willSet {
            print("SubCircle willSetRadius", newValue)
        }
        didSet {
            print("SubCircle didSetRadius", oldValue, radius)
        }
    }
}
var circle = SubCircle()
// Circle getRadius
// SubCircle willSetRadius 10
// Circle setRadius 10
// Circle getRadius
// SubCircle didSetRadius 20 20
circle.radius = 10

/*

属性观察器
class Circle {
    var radius: Int = 1 {
        willSet {
            print("Circle willSetRadius", newValue)
        }
        didSet {
            print("Circle didSetRadius", oldValue, radius)
        }
    }
}
class SubCircle : Circle {
    override var radius: Int {
        willSet {
            print("SubCircle willSetRadius", newValue)
        }
        didSet {
            print("SubCircle didSetRadius", oldValue, radius)
        }
    }
}
var circle = SubCircle()
// SubCircle willSetRadius 10
// Circle willSetRadius 10
// Circle didSetRadius 1 10
// SubCircle didSetRadius 1 10

class Circle {
    var radius: Int = 1
}
class SubCircle : Circle {
    override var radius: Int {
        willSet {
            print("SubCircle willSetRadius", newValue)
        }
        didSet {
            print("SubCircle didSetRadius", oldValue, radius)
        }
    }
}
var circle = SubCircle()
// SubCircle willSetRadius 10
// SubCircle didSetRadius 1 10

class Animal {
    static func speak() {
        print("Animal speak")
    }
    class subscript(index: Int) -> Int {
        return index
    }
}
// Animal speak
Animal.speak()
// 6
print(Animal[6])
class Cat : Animal {
    override class func speak() {
        super.speak()
        print("Cat speak")
    }
    override class subscript(index: Int) -> Int {
        return super[index] + 1
    }
}
// Animal speak
// Cat speak
Cat.speak()
// 7
print(Cat[6])


class Animal {
    func speak() {
        print("Animal speak")
    }
    subscript(index: Int) -> Int {
        return index
    }
}
class Cat : Animal {
    override func speak() {
        super.speak()
        print("Cat speak")
    }
    override subscript(index: Int) -> Int {
        return super[index] + 1
    }
}
var anim: Animal
anim = Animal()
// Animal speak
anim.speak()
// 6
print(anim[6])
anim = Cat()
// Animal speak
// Cat speak
anim.speak()
// 7
print(anim[6])
 */

/*
 

class Animal {
    var age = 0
}
class Dog : Animal {
    var weight = 0
}
class ErHa : Dog {
    var iq = 0
}
let a = Animal()
a.age = 5
// 32
print(Mems.size(ofRef: a))
/*
 0x00000001000073e0
 0x0000000000000002
 0x000000000000000a
 0x0000000000000000
 */
print(Mems.memStr(ofRef: a))
let d = Dog()
d.age = 6
d.weight = 7
// 32
print(Mems.size(ofRef: d))
/*
 0x0000000100007490
 0x0000000000000002
 0x000000000000000a
 0x0000000000000014
 */
print(Mems.memStr(ofRef: d))
let e = ErHa()
e.age = 8
e.weight = 9
e.iq = 10
// 48
print(Mems.size(ofRef: e))
/*
 0x0000000100007560
 0x0000000000000002
 0x000000000000000a
 0x0000000000000014
 0x000000000000001e
 0x0000000000000000
 */
print(Mems.memStr(ofRef: e))



class Grid {
    var data = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
    subscript(row: Int, column: Int) -> Int {
        set {
            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
                return
            }
            data[row][column] = newValue
        }
        get {
            guard row >= 0 && row < 3 && column >= 0 && column < 3 else {
                return 0
            }
            return data[row][column]
        }
    }
}

var grid = Grid()
grid[0, 1] = 77
grid[1, 2] = 88
grid[2, 0] = 99
print(grid.data)
*/
/*

struct Point {
    var x = 0, y = 0
}
class PointManager {
    var point = Point()
    subscript(index: Int) -> Point {
       set { point = newValue }
        get { point }
    }
}
var pm = PointManager()
pm[0].x = 11
// 等价于 pm[0] = Point(x: 11, y: pm[0].y)
pm[0].y = 22
// Point(x: 11, y: 22)
print(pm[0])
// Point(x: 11, y: 22)
print(pm.point)
  */
/*

 class Point {
 var x = 0.0, y = 0.0
 subscript(index i: Int) -> Double {
 if i == 0 {
 return x
 } else if i == 1 {
 return y
 }
 return 0
 }
 }
 var p = Point()
 p.y = 22.2
 print(p[index: 1]) // 22.2
 
 class Sum {
 static subscript(v1: Int, v2: Int) -> Int {
 return v1 + v2
 }
 }
 print(Sum[10, 20]) // 30

 
 
class Point {
    var x = 0, y = 0
}
class PointManager {
    var point = Point()
    subscript(index: Int) -> Point {
        get { point }
    }
}
  */
/*
 



class Point {
    var x = 0.0, y = 0.0
    subscript(index: Int) -> Double {
        get {
            if index == 0 {
                return x
            } else if index == 1 {
                return y
            }
            return 0
        }
    }
}

class Point {
    var x = 0.0, y = 0.0
    subscript(index: Int) -> Double {
        if index == 0 {
            return x
        } else if index == 1 {
            return y
        }
        return 0
    }
}

class Point {
    var x = 0.0, y = 0.0
    subscript(index: Int) -> Double {
        set {
            if index == 0 {
                x = newValue
            } else if index == 1 {
                y = newValue
            }
        }
        get {
            if index == 0 {
                return x
            } else if index == 1 {
                return y
            }
            return 0
        }
    }
}
var p = Point()
p[0] = 11.1
p[1] = 22.2
print(p.x) // 11.1
print(p.y) // 22.2
print(p[0]) // 11.1
print(p[1]) // 22.2
*/


/*
 
struct Point {
    var x = 0.0, y = 0.0
     mutating func moveX(deltaX: Double) -> Double {
        x += deltaX
        return x
    }
}
var p = Point()
p.moveX(deltaX: 10)
@discardableResult
func get() -> Int {
    return 10
}
get()


struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(deltaX: Double, deltaY: Double) {
        x += deltaX //编译报错 Left side of mutating operator isn't mutable: 'self' is immutable
        y += deltaY //编译报错 Left side of mutating operator isn't mutable: 'self' is immutable
         self = Point(x: x + deltaX, y: y + deltaY) //编译报错 Cannot assign to value: 'self' is immutable
    }
}
enum StateSwitch {
    case low, middle, high
    mutating func next() {
        switch self {
        case .low:
            self = .middle//编译报错 Cannot assign to value: 'self' is immutable
        case .middle:
            self = .high//编译报错 Cannot assign to value: 'self' is immutable
        case .high:
            self = .low//编译报错 Cannot assign to value: 'self' is immutable
        }
    }
}




class Car {
    static var cout = 0
    var num = 0
    init() {
        Car.cout += 1
    }
    // 类型方法
    static func getCount() -> Int {
        self.cout //self代表类型
    }
    
    func getnNum() -> Int {
        self.num //self代表实例
    }
}
let c0 = Car()
let c1 = Car()
let c2 = Car()
print(Car.getCount()) // 3

c0.num = 10
c1.num = 11

print(c1.num)
print(c2.num)
*/

/*
public class YZPerson {
    static  var count = 3
}
//public class FileManager {
//    public static let shared = {
//        // ....
//        // ....
//        return FileManager()
//    }()
//    private init() { }
//}
YZPerson.count = 6


//inout的再次研究
struct Shape {
    // 宽、边长
    var width: Int
    // 边的数量
    var side: Int {
        willSet {
            print("willSetSide", newValue)
        }
        didSet {
            print("didSetSide", oldValue, side)
        }
    }
    // 周长
    var girth: Int {
        set {
            // 边长 = 周长 / 边数
            width = newValue / side
            print("setGirth", newValue)
        }
        get {
            print("getGirth")
            // 周长 = 边长 * 边数
            return width * side
        }
    }
    func show() {
        print("width=\(width), side=\(side), girth=\(girth)")
        
    }
}
func test(_ num: inout Int) {
    print("test");
    num = 8
}
var s = Shape(width: 10, side: 4)
*/
//test(&s.girth)
//s.show()
//test(&s.width)
//s.show()

//print("----------")
//test(&s.side)
//s.show()
//print("----------")
//test(&s.girth)
//s.show()
//getGirth
//width=20, side=4, girth=80
//----------
//willSetSide 20
//didSetSide 4 20
//getGirth
//width=20, side=20, girth=400
//----------
//getGirth
//setGirth 20
//getGirth
//width=1, side=20, girth=20


//属性观察器、计算属性的功能，同样可以应用在全局变量、局部变量身上
//var num: Int {
//    get {
//        return 10
//    }
//    set {
//        print("setNum", newValue)
//    }
//}
//num = 11 // setNum 11
//print(num) // 10
//func test() {
//    var age = 10 {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, age)
//        }
//    }
//    age = 11
//    // willSet 11
//    // didSet 10 11
//}
//test()
//
//
//
//struct Circle {
//    var radius: Double {
//        willSet {
//            print("willSet", newValue)
//        }
//        didSet {
//            print("didSet", oldValue, radius)
//        }
//    }
//    init() {
//        self.radius = 1.0
//        print("Circle init!")
//    }
//}
//// Circle init!
//var circle = Circle()
//// willSet 10.5
//// didSet 1.0 10.5
//circle.radius = 10.5
//// 10.5
//print(circle.radius)
//n willSet会传递新值，默认叫newValue
//n didSet会传递旧值，默认叫oldValue
//n 在初始化器中设置属性值不会触发willSet和didSet
//p 在属性定义时设置初始值也不会触发willSet和didSet





//
////延迟存储属性（Lazy Stored Property）
////n 使用lazy可以定义一个延迟存储属性，在第一次用到属性的时候才会进行初始化
//class Car {
//    init() {
//        print("Car init!")
//    }
//    func run() {
//        print("Car is running!")
//    }
//}
//class Person {
//    lazy var car = Car()
//    init() {
//        print("Person init!")
//    }
//    func goOut() {
//        car.run()
//    }
//}
//let p = Person()
//print("--------")
//p.goOut()
//Person init!
//--------
//Car init!
//Car is running!
//class PhotoView {
//    lazy var image: Image = {
//        let url = "https://www.520it.com/xx.png"
//        let data = Data(url: url)
//        return Image(data: data)
//    }()
//}
//n lazy属性必须是var，不能是let
//plet必须在实例的初始化方法完成之前就拥有值
//n 如果多条线程同时第一次访问lazy属性
//p无法保证属性只被初始化1次


//enum Season: Int{
//    case test1 = 1, test2, test3, test4

//    func  rawValue() -> Int {
//        switch self {
//        case .test1:
//            return 11
//        case .test2:
//            return 12
//        case .test3:
//            return 13
//        case .test4:
//            return 14
//
//    }
    
//    var rawValue : Int {
//        switch self {
//        case .test1:
//            return 11
//        case .test2:
//            return 12
//        case .test3:
//            return 13
//        case .test4:
//            return 14
//
//        }
//    }
//}

//var s = Season.test2
//print(s.rawValue)


/*

//set传入的新值默认叫做newValue，也可以自定义
struct Circle {
    var radius: Double
    var diameter: Double {
        set(newDiameter) {
            radius = newDiameter / 2
        }
        get {
            radius * 2
        }
    }
}
//n 只读计算属性：只有get，没有set
struct Circle {
    var radius: Double
    var diameter: Double {
        get {
            radius * 2
        }
    }
}
struct Circle {
    var radius: Double
    var diameter: Double { radius * 2 }
}






struct Circle {
    // 存储属性
    var radius: Int
    // 计算属性
    var diameter: Int {
        set {
            radius = newValue / 2
        }
        get {
           return radius * 2
        }
    }
}

var circle = Circle(radius: 9)
circle.radius = 5
circle.diameter = 8 //这里打断点


//print("Double占用字节", MemoryLayout<Double>.stride)
//print("Circle占用字节",MemoryLayout<Circle>.stride) // 8



print(circle.radius) // 5.0
print(circle.diameter) // 10.0
circle.diameter = 12
print(circle.radius) // 6.0
print(circle.diameter) // 12.0
print(MemoryLayout<Circle>.stride) // 8

*/

/*
// 闭包


// 如果第1个数大于0，返回第一个数。否则返回第2个数
func getFirstPositive(_ v1: Int, _ v2: @autoclosure () -> Int) -> Int {
    print("getFirstPositive")
    return v1 > 0 ? v1 : v2()
}

getFirstPositive(10, 20)
getFirstPositive(10, 20) // 10
getFirstPositive(-2, 20) // 20
getFirstPositive(0, -4) // -4

func getNum() -> Int {
    let a = 100
    let b = 200
    return a + b
}

//func getFirstPositive2(_ v1: Int, _ v2:  Int) -> Int? {
//    return v1 > 0 ? v1 : v2
//
//}
// 改成函数类型的参数，可以让v2延迟加载
func getFirstPositive2(_ v1: Int, _ v2: () -> Int) -> Int? {
    return v1 > 0 ? v1 : v2()

}

getFirstPositive2(10,  20) //报错 Cannot convert value of type 'Int' to expected argument type '() -> Int'

getFirstPositive2(10) { 20}

getFirstPositive2(10, {20})

getFirstPositive2(10, {
    let a = 100
    let b = 200
    return a + b
})

getFirstPositive2(10) {
    let a = 100
    let b = 200
    return a + b
}
//getFirstPositive2(10, getNum())

getFirstPositive2(-4) { 20 }

func getFirstPositive3(_ v1: Int, _ v2: @autoclosure () -> Int) -> Int? {
    return v1 > 0 ? v1 : v2()
}
getFirstPositive3(-4, 20)
getFirstPositive3(-4) { 20 }
getFirstPositive3(10) {
    let a = 100
    let b = 200
    
    return a + b
}


//n 为了避免与期望冲突，使用了@autoclosure的地方最好明确注释清楚:这个值会被推迟执行
//n @autoclosure 会自动将 20 封装成闭包 { 20 }
//n @autoclosure 只支持 () -> T 格式的参数 n@autoclosure 并非只支持最后1个参数
//n 空合并运算符 ?? 使用了 @autoclosure 技术
//n 有@autoclosure、无@autoclosure，构成了函数重载




typealias Fn = (Int) -> Int
func getFn() -> Fn{
    // 局部变量
    var num = 0
    func plus(_ i: Int) -> Int{
        num += i
        return num
//        return i
    }
    return plus(_:)
}

var fn = getFn()
print(fn(1))
print(fn(2))
print(fn(3))
print(fn(4))

*/






















// 尾随闭包


//// 有如下的函数 闭包表达式作为函数的最后一个实参
//func exec(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
//    print(fn(v1, v2))
//}
//
//// 使用尾随闭包为
//exec(v1: 10, v2: 20) {
//    $0 + $1
//}
//
//
//// 这个闭包表达式表达式是函数的唯一实参
//func exec(fn: (Int, Int) -> Int) {
//    print(fn(1, 2))
//}
//
//print(exec{_,_ in 100 })
//// 使用尾随闭包如下三种都可以
//exec(fn: { $0 + $1 })
//exec() { $0 + $1 }
//exec { $0 + $1 }
//
//// 排序
//func numberSort()  {
//    var arr = [6, 8, 1, 10]
//    arr.sort()
//    print(arr) //[1, 6, 8, 10]
//}
//
//numberSort()

// 官方定义
//func sort(by areInIncreasingOrder: (Element, Element) -> Bool)

////假如我们想自定义，按照从大到小
////
///// 返回true: i1排在i2前面
///// 返回false: i1排在i2后面
//func cmp(i1: Int, i2: Int) -> Bool {
//    // 大的排在前面
//    return i1 > i2
//}
//var nums = [6, 8, 1, 10]
//nums.sort(by: cmp)
//print(nums)
//print("--------")
//// [68, 45, 18, 11, 6, 5, 2]
//nums.sort(by: {
//    (i1: Int, i2: Int) -> Bool in
//    return i1 > i2
//})
//nums.sort(by: { i1, i2 in return i1 > i2 })
//nums.sort(by: { i1, i2 in i1 > i2 })
//nums.sort(by: { $0 > $1 })
//nums.sort(by: >)
//nums.sort() { $0 > $1 }
//nums.sort { $0 > $1 }








// 函数 我们定义如下的函数 exec ，它接收三个参数，分别为两个Int 和一个函数，而且这个函数，接收两个Int 参数，返回一个Int结果，exec 的作用就是，把前两个参数传给第三个参数(也就是函数)去执行，然后结果打印出来
//func exec2(v1: Int, v2: Int, fn: (Int, Int) -> Int) {
//    print(fn(v1, v2))
//}
//
//// 闭包表达式
//exec(v1: 10, v2: 20, fn: {
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//})
//
//// 省略参数类型 因为swift可以自己推断类型
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in return v1 + v2
//})
//
//// return 也可以省略
//exec(v1: 10, v2: 20, fn: {
//    v1, v2 in v1 + v2
//})
//
//// 省略掉参数列表，用$0代表第0个参数，$0代表第1个参数
//exec(v1: 10, v2: 20, fn: {
//    $0 + $1
//})
//
//// 终极省略
//exec(v1: 10, v2: 20, fn: +)






// 函数
//func sum(_ v1: Int, _ v2: Int) -> Int { v1 + v2 }
//// 使用
//sum(10, 20)
//
//
//var fn = {
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//}
//
//// 使用
//fn(10, 20)
//
////也可以
//
//{
//    (v1: Int, v2: Int) -> Int in
//    return v1 + v2
//}(10, 20)

//{
//    (参数列表) -> 返回值类型 in 函数体代码
//}

//// 类
//
////一般把定义在枚举、结构体、类内部的函数，叫做方法
//// 类中定义方法
//class Size {
//    var width = 10
//    var height = 10
//    func show() {
//        print("width=\(width), height=\(height)")
//    }
//}
//let s = Size()
//s.show() // width=10, height=10
//
//// 结构体中定义方法
//struct Point {
//    var x = 10
//    var y = 10
//    func show() {
//        print("x=\(x), y=\(y)")
//    }
//}
//let p = Point()
//p.show() // x=10, y=10
//
//// 枚举中定义方法
//enum grade : Character {
//    case a = "a"
//    case b = "b"
//    func show() {
//        print("res is \(rawValue)")
//    }
//}
//let g = grade.a
//g.show() // res is a
//
//
//
//func test1(){
//    // 类size
//    class Size {
//        var width = 1
//        var height = 2
//    }
//
//    // 类 Point
//    struct Point {
//        var x = 3
//        var y = 4
//    }
//
//    // 变量 size 接收类Size
//    var size = Size()
//    // 变量 point 接收结构体point
//    var point = Point()
//}
//
//test1()
//
//
//
////class Point {
////    var x: Int = 0
////    var y: Int = 0
////
////}
////let p1 = Point()
////let p2 = Point(x: 10, y: 20)//报错Argument passed to call that takes no arguments
////let p3 = Point(x: 10)//报错Argument passed to call that takes no arguments
////let p4 = Point(y: 20)//报错Argument passed to call that takes no arguments
//
//
//func test(){
//    struct Point {
//        var x: Int = 0
//        var y: Int = 0
//        var origin: Bool = true
//
////        init() {
////            x=0
////            y=0
////        }
//
//    }
////    let p = Point()
//    print(MemoryLayout<Point>.size)
//    print(MemoryLayout<Point>.stride)
//    print(MemoryLayout<Point>.alignment)
//}
//test()
//
//
////enum TestEnum{
////    case k0,k1,k2,k3
////}
////
////var t = TestEnum.k1
////print(Mems.ptr(ofVal: &t))
////
////t = TestEnum.k2
//
////print(MemoryLayout<TestEnum>.size)
////print(MemoryLayout<TestEnum>.stride)
////print(MemoryLayout<TestEnum>.alignment)
////testEnum()
//
//enum TestEnum {
//    case spring
//}
//
//print(MemoryLayout<TestEnum>.size)      // 0, 分配占用的空间大小
//print(MemoryLayout<TestEnum>.stride)    //1, 实际用到的空间大小
//print(MemoryLayout<TestEnum>.alignment)// 1, 对齐参数
//
//func testEnum() {
//    enum TestEnum {
//        case test1(Int, Int, Int)
//        case test2(Int, Int)
//        case test3(Int)
//        case test4(Bool)
//        case test5
//    }
//
//
//    print(MemoryLayout<TestEnum>.size)  // 25, 分配占用的空间大小
//    print(MemoryLayout<TestEnum>.stride)    //32, 实际用到的空间大小
//    print(MemoryLayout<TestEnum>.alignment)// 8, 对齐参数
//
//    // 1个字节存储成员值
//    // N个字节存储关联值（N取占用内存最大的关联值），任何一个case的关联值都共用这N个字节
//    // 共用体
//
//    // 小端：高高低低
//    // 01 00 00 00 00 00 00 00
//    // 02 00 00 00 00 00 00 00
//    // 03 00 00 00 00 00 00 00
//    // 00
//    // 00 00 00 00 00 00 00
//    var e = TestEnum.test1(1, 2, 3)
//    print(Mems.ptr(ofVal: &e))
//
//    // 04 00 00 00 00 00 00 00
//    // 05 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 01
//    // 00 00 00 00 00 00 00
//    e = .test2(4, 5)
//    print(Mems.memStr(ofVal: &e))
//
//    // 06 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 02
//    // 00 00 00 00 00 00 00
//    e = .test3(6)
//
//    // 01 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 03
//    // 00 00 00 00 00 00 00
//    e = .test4(true)
//
//    // 00 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 00 00 00 00 00 00 00 00
//    // 04
//    // 00 00 00 00 00 00 00
//    e = .test5
//}
//
//func testInout() {
//    var numbers = [10, 20, 30]
//    numbers[0] = 20
//    numbers[0] = 30
//
//    func test(_ num: inout Int) {
//
//    }
//
//    test(&numbers[0])
//}
//
//
//
////var i = 0
////let str : String = "k"
////while(i<65540){
//////    print(str,i, separator: "", terminator: ",")
////    i += 1
////}
////public func print(_ items: Any..., separator: String = " ", terminator: String = "\n")
//
//
//
//
//
//
//
//
//print("Hello, World!")
//
