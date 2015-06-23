//
//  ViewController.swift
//  swift - 01
//
//  Created by apple on 15/6/23.
//  Copyright (c) 2015年 cloud7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //字符大写/小写
        var mChar = "abC"
        mChar += "deF"
        if !mChar.isEmpty{
            //把值转换成字符串
            println("\(mChar)")
        }
        println(mChar.lowercaseString)
        println(mChar.uppercaseString)
    
        //默认未double
        let mDouble = 3.1415926
        println(mDouble)
        
        
        //BOOL
        let mBol = true;
        println(mBol)
        
        //元组
        var mTuples = (404,"Not Found")
        var (mFour,mFound) = mTuples;
        mFound += " \(mFour)"
        println(mFour)
        println(mFound)
        println(mTuples.0)
        
        //问号暗示包含的值是可选,也就是说可能包含 Int 值也可能不包含值。(不能包含其他任何值比如 Bool 值或者 String 值。只能是 Int 或者什么都没有。)
        //当你确定可选包确实含值之后,你可以在可选的名字后面加一个感叹号(!)来获取值。这个惊叹号表示“我知道这个可选有值,请使用它。”这被称为可选值的强制解析(forcedunwrapping):
        //注意:使用! 来获取一个不存在的可选值会导致运行时错误。使用! 来强制解析值之前,一 定要确定可选包含一个非 nil 的值。
        
        //retutnNum 的类型是(optional)Int 既int?
        let retutnNum = mChar.toInt()
        println(retutnNum)
        
        
        //可选绑定
//        if let actualNumber = mFound.toInt() {
//            println("\(possibleNumber) has an integer value of \(actualNumber)
//            "),
//        } else {
//            println("\(possibleNumber) could not be converted to an integer"); 5. }
        
        var mFive :String! = "12345"
        if var amFive = mFive.toInt(){
            println(amFive)
        }else{
            println("NO")
        }
        // 输出 "123 has an integer value of 123"
//        这段代码可以被理解为:
//        “如果 possibleNumber.toInt 返回的可选 Int 包含一个值,创建一个叫做 actualNumber 的 新常量并将可选包含的值赋给它。”
//        如果转换成功,actualNumber 常量可以在 if 语句的第一个分支中使用。它已经被可选包含 的值初始化过,所以不需要再使用!后缀来获取它的值。在这个例子中,actualNumber 只
//        被用来输出转换结果。
//        你可以在可选绑定中使用常量和变量。如果你想在 if 语句的第一个分支中操作 actualNumber 的值,你可以改成 if var actualNumber,这样可选包含的值就会被赋给一个
//        变量而非常量。
        
        
        //注意:nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失 的情况,请把它们声明成对应的可选类型。
        
        //在 Objective-C 中,nil 是一个指向 不存在对象的指针。在 Swift 中,nil 不是指针——它是一个确定的值,用来表示值缺失。
        //任何类型的可选都可以被设置为 nil,不只是对象类型。
        var canChoose :Int? = 404
        println(canChoose)
        canChoose = nil;
        println(canChoose)
        
        //注意:如果一个变量之后可能变成 nil 的话请不要使用隐式解析可选。如果你需要在变量的生命周期中判断是否是 nil 的话,请使用普通可选类型。(/*然而并没有报错*/)
        var couldChoose :Int! = 505
        println(couldChoose)
        couldChoose = nil;
        println(couldChoose)
        
        //断言(调试用)
        let age = 3
        assert(age >= 0, "viewDidLoad 69")
        
        
        /**
        运算符
        1.赋值符 = 不返回值, 以防止错把等号 == 写成赋值号 = 而导致 Bug.
        2.区别于 C 语言, 在 Swift 中你可以对浮点数进行取余运算( % ), 还提供了 C 语言没有的表达 两数之间的值的区间运算符, ( a..b 和 a...b ), 这方便我们表达一个区间内的数值.
        */
        
        
        /**
        字符串/字符
        */
        //1.遍历字符
        for Character in "kang"{
            println(Character)
        }
        
        //2.计算字符数量countElements
        var m = 0;
        m = countElements("kangjiaxing")
        println("kangjiaxing.count = \(m)")
        
        
        //3.注意:您插值字符串中写在括号中的表达式不能包含非转义双引号 (") 和反斜杠 (\) 并且不能包含回车或换行符。
        
        /**
        数组/字典
        */
        //1.数组定义,不同于OC可以是任何类型,不一定是对象类型.但必须明确元素类型
        var dmArray : [String] = ["kangHU","jia","xing"]
        var threeDouble = [Double](count: 3, repeatedValue: 0.0)
        
        println(dmArray.first)
        println(dmArray.last)
        println(dmArray[1])
        //插入
        dmArray.insert("is", atIndex: 3)
        println(dmArray)
        
        for items in dmArray{
            println(items)
        }
        
        for(index,value) in enumerate(dmArray){
            println("\(index) - \(value)")
        }
        
        println("threeDouble = \(threeDouble)")
        
        
        var airports : Dictionary<String , String> = ["TYO": "Tokyo", "DUB" : "Dublin"]
        println(airports)
        airports["lon"] = "london"
        println(airports)
        
        /**
        控制流语句
        */
        //1.使用下划线(_)来匹配所有可能的值
        //2.switch语句可以不写break
        //3.不像C语言,Swift 允许多个case匹配同一个值。实际上,在这个例子中,点(0,0)可以匹
        //配所有四个 case。但是,如果存在多个匹配,那么只会执行第一个被匹配到的 case 块。考 虑点(0, 0)会首先匹配 case (0, 0),因此剩下的能够匹配(0, 0)的 case 块都会被忽视掉。
        
        /**
        控制转移语句
        */
        //1.continue(结束本次循环) 告诉一个循环体立刻停止本次循环迭代,重新开始下次循环迭代。就好像在说“本 次循环迭代我已经执行完了”,但是并不会离开整个循环体。
        //2.￼break(结束循环,跳转到表示循环体结束的大括号(})后的第一行代码) 语句会立刻结束整个控制流的执行。当你想要更早的结束一个 switch 代码块或者一 个循环体时,你都可以使用 break 语句。
  
    }
  
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println(__FUNCTION__)
        
    }
    
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        println(__FUNCTION__)
    }
    

}


