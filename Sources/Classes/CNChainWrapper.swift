//
//  CNChainWrapper.swift
//  PlatformA
//
//  Created by Copper on 2021/9/24.
//

import UIKit

@dynamicMemberLookup
public struct CNChainWrapper<Subject> {
    public let subject: Subject

    public init(_ subject: Subject) {
        self.subject = subject
    }

    public subscript<Value>(
        dynamicMember keyPath: WritableKeyPath<Subject, Value>
    ) -> ((Value) -> CNChainWrapper<Subject>) {
        var subject = self.subject
        return { value in
            subject[keyPath: keyPath] = value
            return CNChainWrapper(subject)
        }
    }
}

public protocol CNChainWrapperCompatible {
    associatedtype ChainWrapperBase

    // swiftlint:disable:next identifier_name
    static var cn: CNChainWrapper<ChainWrapperBase>.Type { get set }

    // swiftlint:disable:next identifier_name
    var cn: CNChainWrapper<ChainWrapperBase> { get set }
}

extension CNChainWrapperCompatible {
    // swiftlint:disable:next identifier_name
    public static var cn: CNChainWrapper<Self>.Type {
        get { CNChainWrapper<Self>.self }
        // this enables using CNChainWrapper to "mutate" base type
        // swiftlint:disable:next unused_setter_value
        set {}
    }

    // swiftlint:disable:next identifier_name
    public var cn: CNChainWrapper<Self> {
        get { CNChainWrapper(self) }
        // this enables using CNChainWrapper to "mutate" base type
        // swiftlint:disable:next unused_setter_value
        set {}
    }
}

/// Extend NSObject with `cn` proxy.
extension NSObject: CNChainWrapperCompatible { }
