//
//  ViewController.swift
//  BTVNDay9
//
//  Created by Tung on 7/7/20.
//  Copyright © 2020 Tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scrollView.backgroundColor = UIColor.red
        return scrollView
    }()
    
    let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = .gray
        pageControl.currentPageIndicatorTintColor = .white
        pageControl.frame = CGRect(x: 0, y: UIScreen.main.bounds.height - 50, width: 100, height: 20)
        return pageControl
    }()
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    var arrayView = [CustomView]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        createData()
        setupItem(views: arrayView)
        pageControl.numberOfPages = arrayView.count
        pageControl.center.x = view.center.x
        view.addSubview(scrollView)
        view.addSubview(pageControl)
        
        scrollView.delegate = self
    }
    func createData(){
        let item1 = CustomView()
        item1.imageView.image = UIImage(named: "background1")
        item1.lableView1.text = "Find a trip"
        item1.lableView2.text = "A large selection of trip available to the underwater world"
        
        let item2 = CustomView()
        item2.imageView.image = UIImage(named: "background2")
        item2.lableView1.text = "Book a date"
        item2.lableView2.text = "Just a few small step to the amazing journey of your life"
        
        let item3 = CustomView()
        item3.imageView.image = UIImage(named: "background3")
        item3.lableView1.text = "Admire the sea"
        item3.lableView2.text = "Enjoy an forgettable view of the sea depth in a safe way"
        
        arrayView.append(contentsOf: [item1, item2, item3])
    }
   
    
    func setupItem(views: [CustomView]){
        scrollView.frame = CGRect(x: 0, y: 0,
                                  width: screenWidth,
                                  height: screenHeight)
        scrollView.contentSize = CGSize(width: screenWidth * CGFloat(views.count),
                                        height: screenHeight)
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        for i in 0..<views.count {
            views[i].frame = CGRect(x: screenWidth * CGFloat(i),
                                    y: 0,
                                    width: screenWidth,
                                    height: screenHeight)
            scrollView.addSubview(views[i])
        }
    }

}

extension ViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/screenWidth)
        pageControl.currentPage = Int(pageIndex)
    }
}
