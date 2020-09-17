//
//  BWFeedback.swift
//  BWReportProblem
//
//  Created by raj on 16/09/20.
//  Copyright © 2020 Bluewhale. All rights reserved.
//

import Foundation
import UIKit

public class BWFeedback {
    
    static public let shared: BWFeedback = BWFeedback()
    
    public var recipients: [String] = []
    public var title: String = "Report a problem"
    public var sendButtonTitle = "Send"
    public var cancelButtonTitle = "Cancel"
    public var navigationController = UINavigationController()
    
    public func present(_ sender: UIViewController, _ project_id: String) {
        navigationController.viewControllers = [BWFeedbackController()]
        sender.present(navigationController, animated: true, completion: nil)
    }
}
