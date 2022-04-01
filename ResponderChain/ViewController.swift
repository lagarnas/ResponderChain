//
//  ViewController.swift
//  ResponderChain
//
//  Created by Анастасия Леонтьева on 18.10.2020.
//

import UIKit

extension UIView {
  open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    print(self, #function)
    next?.touchesBegan(touches, with: event)
  }
}


extension UIWindow {
  open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    print("UIWindow:", #function)
    next?.touchesBegan(touches, with: event)
  }
}

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    print("UIViewController:", #function)
    next?.touchesBegan(touches, with: event)
  }

}

