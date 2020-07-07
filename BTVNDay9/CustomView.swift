//
//  CustomView.swift
//  BTVNDay9
//
//  Created by Tung on 7/7/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class CustomView: UIView {

    let imageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    let lableView1: UILabel = {
        let lable = UILabel()
        lable.font = lable.font.withSize(30)
        lable.textColor = UIColor.white
        lable.textAlignment = NSTextAlignment.center
       // lable.backgroundColor = .red
        return lable
    }()
    let lableView2: UILabel = {
        let lable = UILabel()
        lable.font = lable.font.withSize(20)
        lable.textColor = UIColor.white
        lable.textAlignment = NSTextAlignment.center
        lable.numberOfLines = 0
      //  lable.backgroundColor = .gray
        return lable
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    func setupLayout(){
        self.addSubview(imageView)
        self.addSubview(lableView1)
        self.addSubview(lableView2)
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        lableView1.frame = CGRect(x: UIScreen.main.bounds.width/4, y: UIScreen.main.bounds.height-300, width: 200, height: 50)
        lableView2.frame = CGRect(x: UIScreen.main.bounds.width/8, y: UIScreen.main.bounds.height-250, width: 300, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
