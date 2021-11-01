# CNChainWrapper

[![CI Status](https://img.shields.io/travis/CouchNut/CNChainWrapper.svg?style=flat)](https://travis-ci.org/CouchNut/CNChainWrapper)
[![Version](https://img.shields.io/cocoapods/v/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)
[![License](https://img.shields.io/cocoapods/l/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)
[![Platform](https://img.shields.io/cocoapods/p/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)

在日常开发中，使用 Swift 实现链式调用时，会写出以下类似代码：

```swift
class Person {
    var id: Int?
    var name: String?
    var age: Int?
    var nickName: String?

    func id(_ id: Int?) -> Person {
        self.id = id
        return self
    }

    func name(_ name: String?) -> Person {
        self.name = name
        return self
    }

    func age(_ age: Int?) -> Person {
        self.age = age
        return self
    }

    func nickName(_ nickName: String?) -> Person {
        self.nickName = nickName
        return self
    }
}

let person = Person().age(18).name("Bob").id(1).nickName("Job")
....
```

如果只是那么一两个类需要实现链式调用，问题还不是很大，当遇到一个项目里几乎所有的类都需要实现链式调用时，这样写起来，不仅代码量大，而且重复工作太多，耗时耗力，给我们带来非常大的痛苦。

在经历过多次此种痛苦后，终于受不了这种写法，想寻找一个新的、酷的、省力气的实现链式调用的方式，经过一两个小时的探索，终于 `CNChainWrapper` 诞生了，目前本人已经加入到项目中。

## 如何使用

## 1、安装

### CocoaPods

在 Podfile 中添加下面代码，然后执行 `pod install`

```ruby
pod 'CNChainWrapper'
```

### Carthage

敬请期待

### Swift Package Manager

敬请期待

## 2、使用

在需要使用的 swift 文件中导入 `CNChainWrapper` 即可

```swift
import CNChainWrapper
```

想要链式调用时，只需要优先调用 `cn` 即可，代码如下：

### Class

* 继承自 `NSObject` 的类
```swift
class Student: NSObject {
    var id: Int?
    var name: String?
    var age: Int?
    var nickName: String?
}

let student = Student().cn
    .id(1)
    .name("Bob")
    .nickName("Job")
    .age(18)
```

省时省力，只需要给类定义好属性即可

* 非继承自 NSObjec 的类
  
实现方法与 Struct 类似，遵守 CNChainWrapperCompatible 即可，可参考 Struct

### Struct
`Struct` 需要特殊处理一下，也不难，只需要遵守 CNChainWrapperCompatible 即可， 代码如下：
```swift
struct Child: CNChainWrapperCompatible {
    var id: Int?
    var name: String?
    var age: Int?
    var nickName: String?
}

let child = Child().cn
    .id(1)
    .name("Bob")
    .nickName("Job")
    .age(18)
```

**注：** enum，目前还没有测试过，等以后需要了再测试~

## 参考并感谢

- [RxSwift](https://github.com/ReactiveX/RxSwift/blob/main/RxSwift/Reactive.swift)的 `rx` 实现方式，具体文件是 `Reactive.swift` 
- [掘金](https://juejin.cn/post/7005541971427065886) 上这位大兄弟的文章。