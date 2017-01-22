//
//  UpperNotificationAnimatorType.swift
//  UpperNotificationController
//
//  Created by muukii on 7/4/16.
//  Copyright © 2016 muukii. All rights reserved.
//

import UIKit

public protocol NotificationAnimatorType {

  func applyPresentAnimation<T>(notificationView: T, completion: @escaping () -> Void) where T: NotificationViewType, T: UIView

  func applyDismissAnimation<T>(notificationView: T, completion: @escaping () -> Void) where T: NotificationViewType, T: UIView
}

extension NotificationAnimatorType {
  public var statusBarWindow: UIWindow {
    return UIApplication.shared.value(forKey: "_statusBarWindow") as! UIWindow
  }
}
