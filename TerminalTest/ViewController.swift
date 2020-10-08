//
//  ViewController.swift
//  TerminalTest
//
//  Created by Karthik on 03/10/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        #if targetEnvironment(macCatalyst)
        print("Running on mac")
        #else
        switch traitCollection.userInterfaceIdiom {
        case .phone:
            print("Running on iPhone")
        case .pad:
            print("Running on iPad")
        default:
            print("Running on \(traitCollection.userInterfaceIdiom)")
        }
        #endif
    }


}

