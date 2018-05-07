//
//  ViewController.swift
//  AnimateViewTest
//
//  Created by lbe on 2018/5/7.
//  Copyright © 2018年 liwuyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var view1:UIView!
    var view2:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view1 = UIView()
        view1.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        view1.backgroundColor = UIColor.red
        self.view.addSubview(view1)
        
        view2 = UIView()
        view2.frame = CGRect(x: 50, y: 330, width: 80, height: 80)
        view2.backgroundColor = UIColor.blue
        self.view.addSubview(view2)
        
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //****************  uiview动画是对core Animation的高层封装
        
        //一般动画
//        UIView.animate(withDuration: 1.0) {
//            self.view2.frame = self.view1.frame
//        }
        
//        UIView.animate(withDuration: 1.0, animations: {
//            self.view2.frame = self.view1.frame
//        }) { (animate) in
//            print("动画结束")
//        }
        
//        UIView.animate(withDuration: 1.0, delay: 1.0, options: [UIViewAnimationOptions.autoreverse,.repeat], animations: {
//            self.view2.frame = self.view1.frame
//        }) { (animate) in
//            print("动画结束")
//        }
        
//        let view3 = UIView()
//        view3.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
//        view3.backgroundColor = UIColor.blue
//
//
        //关键帧动画
//        UIView.animateKeyframes(withDuration: 4, delay: 0, options: .calculationModeLinear, animations: {
//
//            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/4, animations: {
//                self.view1.backgroundColor = UIColor.red
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 1/4, relativeDuration: 1/4, animations: {
//                self.view1.backgroundColor = UIColor.yellow
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 2/4, relativeDuration: 1/4, animations: {
//                self.view1.backgroundColor = UIColor.blue
//            })
//
//            UIView.addKeyframe(withRelativeStartTime: 3/4, relativeDuration: 1/4, animations: {
//                self.view1.backgroundColor = UIColor.green
//            })
//
//        }) { (animate) in
//            print("动画结束")
//        }
        
        //转场动画
        //        UIView.transition(with: view1, duration: 2, options: .transitionCurlUp, animations: {
        //            self.view1.addSubview(view3)
        //        }) { (animate) in
        //            print("动画结束")
        //        }
        
        UIView.transition(with: view1, duration: 2, options: .transitionFlipFromBottom, animations: {
            self.view1.backgroundColor = UIColor.blue
        }) { (animate) in
            print("动画结束")
        }
        
//        let view3 = UIView(frame: view1.frame)
//        view3.backgroundColor = UIColor.yellow
//        UIView.transition(from: view1, to: view3, duration: 2, options: .transitionFlipFromLeft) { (animate) in
//            print("动画结束")
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

