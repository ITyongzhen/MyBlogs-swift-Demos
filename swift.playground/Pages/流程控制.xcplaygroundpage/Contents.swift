//: [Previous](@previous)

let range1: ClosedRange<Int> = 1...3
let range2: Range<Int> = 1..<3
let range3: PartialRangeThrough<Int> = ...5


let strRange = "a"..."f"
strRange.contains("d")
strRange.contains("l")
//for i in strRange {
//    print(i)
//}

let characterRange: ClosedRange<Character> = "\0"..."~"
//想判断s是否是ASCII字符可以
characterRange.contains("s") //返回true

let all = 100
let interval = 20
// res的取值为从 10 开始 每次间隔 20，直到100结束，
for res in stride(from: 10, to: all, by: interval) {
    print(res)
}// 结果为
//10
//30
//50
//70
//90

var res = 1
switch res {
case 0:
    print("res = 0")
case 1:
    print("res = 1")
    fallthrough
case 2:
    print("res = 2")
default:
     print("other res")
}

let string = "aaa"
switch string {
case "aaa":
    print("string is aaa")
case "bbb":
    print("string is bbb")
default:
    break
} // string is aaa

let character: Character = "a"
switch character {
case "a","A":
     print("string is a or A")
default:
    print("string is not a or A")
} //string is a or A


let count = 8
switch count {
case 0:
    print("0")
case 1..<5:
    print("1到4")
case 5..<10:
    print("5到10")
default:
    break
}

let point = (1,0)
switch point {
case (0, 0):
    print("原点")
case (_, 0):
    print("x轴")
case (0, _):
    print("y轴")
case (-2...2, -2...2):
    print("区间")

default:
     print("other")
}

let point2 = (1,0)
switch point2 {
case (0, 0):
    print("原点")
case (let x, 0):
    print("x轴 x是 \(x)")
case (0, let y):
    print("y轴 y是 \(y)")
case let (x, y):
    print("somewhere else at (\(x),\(y))")
    
default:
    print("other")
}
// x轴 x是 1

let point3 = (1, -1)
switch point3 {
case let (x, y) where x == y:
    print("x = y")
case let (x, y) where x == -y:
    print("x = -y")
default:
    break
}

var numbers = [1,2,3,4,5,]
var sum = 0
for num in numbers where num > 2 {
    sum += num
}
print(sum) //12

outer: for i in 1...4{
    for k in 1...4 {
        if k == 2 {
            continue outer
        }
        if i == 3 {
            break outer
        }
         print("i == \(i), k == \(k)")
    }
   
}


//: [Next](@next)
