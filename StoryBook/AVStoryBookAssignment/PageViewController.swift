//
//  PageViewController.swift
//  AVStoryBookAssignment
//
//  Created by cdajp on 2018-11-01.
//  Copyright © 2018 cdajp. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    private var pageCollection = [StoryViewController]()
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        let storyVC1 = storyboard?.instantiateViewController(withIdentifier: "storyVC") as! StoryViewController // need to check the storyVC location :-/
        storyVC1.view.backgroundColor = #colorLiteral(red: 0, green: 0.4666666667, blue: 0.7333333333, alpha: 1)
        pageCollection.append(storyVC1)
        
        let storyVC2 = storyboard?.instantiateViewController(withIdentifier: "storyVC") as! StoryViewController // need to check the storyVC location :-/
        storyVC2.view.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        pageCollection.append(storyVC2)
        
        let storyVC3 = storyboard?.instantiateViewController(withIdentifier: "storyVC") as! StoryViewController // need to check the storyVC location :-/
        storyVC3.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        pageCollection.append(storyVC3)
        
        let storyVC4 = storyboard?.instantiateViewController(withIdentifier: "storyVC") as! StoryViewController // need to check the storyVC location :-/
        storyVC4.view.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        pageCollection.append(storyVC4)
        
        let storyVC5 = storyboard?.instantiateViewController(withIdentifier: "storyVC") as! StoryViewController // need to check the storyVC location :-/
        storyVC5.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        pageCollection.append(storyVC5)
        
        setViewControllers([storyVC1], direction: .forward, animated: true, completion: nil)
    }

}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        // return the VC that should be placed before my "current" vc
        guard let index = pageCollection.firstIndex(of: viewController as! StoryViewController) else {
            return nil
        }
        let nextIndex = index + 1
        if nextIndex >=  pageCollection.count {
            return nil
        }
        return pageCollection[nextIndex]
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        // return the VC that should be placed after my "current" vc
        guard let index = pageCollection.firstIndex(of: viewController as! StoryViewController) else {
            return nil
        }
        let beforeIndex = index - 1
        if beforeIndex < 0 {
            return nil
        }
        return pageCollection[beforeIndex]
        
        
    }
}
