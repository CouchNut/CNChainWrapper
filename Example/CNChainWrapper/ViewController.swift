//
//  ViewController.swift
//  CNChainWrapper
//
//  Created by CouchNut on 09/29/2021.
//  Copyright (c) 2021 CouchNut. All rights reserved.
//

import UIKit
import CNChainWrapper

struct Point: CNChainWrapperCompatible {
    var x: CGFloat = 0
    var y: CGFloat = 0
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        imageView.image = UIImage(named: "named")
        imageView.alpha = 0.5
        imageView.contentMode = .scaleAspectFit
        

        let rect = CGRect(
            origin: CGPoint(x: self.view.frame.midX - 150, y: self.view.frame.midY - 75),
            size: CGSize(width: 300, height: 150)
        )
        /// 对 class 进行链式调用
        let lable = UILabel().cn
            .text("This is a label")
            .font(.systemFont(ofSize: 34))
            .textColor(.yellow)
            .textAlignment(.center)
            .backgroundColor(.black)
            .frame(rect)
            .subject

        /// 对类中类对象进行链式调用设置值
        lable.layer.cn
            .borderWidth(10)
            .borderColor(UIColor.yellow.cgColor)

        /// 对 struct 进行链式调用
        let point = Point().cn.x(10).y(10).subject
        print("point: \(point)")

        self.view.addSubview(lable)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

