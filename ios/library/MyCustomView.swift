//
//  MyCustomView.swift
//  testNativeView
//
//  Created by Yudi Edri Alviska on 26/11/21.
//

import UIKit

class MyCustomView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
 
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupView()
  }
  
  @objc var status = false {
      didSet {
          self.setupView()
      }
  }
   
  @objc var onClick: RCTBubblingEventBlock?
   
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      guard let onClick = self.onClick else { return }
   
      let params: [String : Any] = ["value1":"react demo","value2":1]
      onClick(params)
  }
 
  private func setupView() {
    self.backgroundColor = self.status ? .green : .red
   
    self.isUserInteractionEnabled = true
   
  }
}

@objc (RCTMyCustomViewManager)
class RCTMyCustomViewManager: RCTViewManager {
 
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
 
  override func view() -> UIView! {
    return MyCustomView()
  }
}
