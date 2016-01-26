//
//  ViewController.swift
//  test
//
//  Created by Mary Kate Nawalaniec on 1/26/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var searchText: UITextField!
   @IBOutlet weak var searchButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.menuLabel.text="Name"
        
        self.searchText.placeholder="Enter Name"
        self.menuLabel.textAlignment = .Center
        self.searchText.textAlignment = .Center
      //  self.searchButton.sizeThatFits(<#T##size: CGSize##CGSize#>)
    //   searchButton.UIControlEvents.TouchUpInside
    
        @IBAction func searchButton(sender: UIButton) {
            searchButton.setTitle("Search", forState: .Normal)
            searchButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        }
        
        
       
        
        //  var survey = [Survey]()
        //    survey += [Survey(fname: "Cory", lname: "Jbara", hometown: "Waterford, MI", type: Classification.Junior)]
        //     survey += [Survey(fname: "Victor", lname: "Hawley", hometown: "Los Angeles, CA", type: Classification.Senior//, dob: "10-31-1993"
        //        )]
        //     survey += [Survey(fname: "Lucinda", lname: "Krahl", hometown: "Lindsay, TX", type: Classification.Senior//, dob: "02-25-1994"
        //       )]
        //    survey += [Survey(fname: "Jose", lname: "Suarez", hometown: "Monterrey, Mexico", type: Classification.Junior//, dob: "06-14-1994"
        //      )]
        //    survey += [Survey(fname: "Katie", lname: "Kuenster", hometown: "St.Paul, MN", type: Classification.Junior//, dob: "02-05-1995"
        //     )]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

