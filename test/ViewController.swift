//
//  ViewController.swift
//  test
//
//  Created by Mary Kate Nawalaniec on 1/26/16.
//  Copyright © 2016 Mary Kate Nawalaniec. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var Cory = Survey(fname: "Cory", lname: "Jbara", hometown: "Waterford, MI", type: .Junior, date: 30, month: 3, year: 1995)
    var Victor = Survey(fname: "Victor", lname: "Hawley", hometown: "Los Angeles, CA", type: Classification.Senior, date: 31, month: 10, year: 1993)//, dob: "10-31-1993"
    
    var Lucinda = Survey(fname: "Lucinda", lname: "Krahl", hometown: "Lindsay, TX", type: Classification.Senior, date: 25, month: 2, year: 1994)//, dob: "02-25-1994"
    
    var Jose = Survey(fname: "Jose", lname: "Suarez", hometown: "Monterrey, Mexico", type: Classification.Junior, date: 14, month: 6, year: 1994)//, dob: "06-14-1994"
    
    var Katie = Survey(fname: "Katie", lname: "Kuenster", hometown: "St.Paul, MN", type: Classification.Junior, date: 5, month: 2, year: 1995)//, dob: "02-05-1995"
    
    //  var survey = [Survey]()
    // survey = [Survey(fname: "Cory", lname: "Jbara", hometown: "Waterford, MI", type: Classification.Junior)]
    // survey += [Survey(fname: "Victor", lname: "Hawley", hometown: "Los Angeles, CA", type: Classification.Senior//, dob: "10-31-1993"
    // )]
    // survey += [Survey(fname: "Lucinda", lname: "Krahl", hometown: "Lindsay, TX", type: Classification.Senior//, dob: "02-25-1994"
    // )]
    // survey += [Survey(fname: "Jose", lname: "Suarez", hometown: "Monterrey, Mexico", type: Classification.Junior//, dob: "06-14-1994"
    // )]
    // survey += [Survey(fname: "Katie", lname: "Kuenster", hometown: "St.Paul, MN", type: Classification.Junior//, dob: "02-05-1995"
    // )]
    
    
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var searchText: UITextField!
    
    @IBOutlet weak var searchButton: UIButton!
    
    
    @IBOutlet weak var studentDisplay: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.menuLabel.text="Student Search"
        
        self.searchText.placeholder="Enter Name"
        self.menuLabel.textAlignment = .Center
        self.searchText.textAlignment = .Center
        
        //user's input into searchText UITextField
        searchText.delegate = self
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
            
            
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func searchButton(sender: UIButton) {
        
        let compare = searchText.text
        
        if (compare == "Cory" || compare == "Cory Jbara" || compare == "Jbara") {
            studentDisplay.text = Cory.description
            studentDisplay.sizeToFit()
            studentDisplay.numberOfLines=7
            studentDisplay.textAlignment = NSTextAlignment.Center
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"}
            
        else if (compare == "Victor" || compare == "Victor Hawley" || compare == "Hawley"){
            studentDisplay.text = Victor.description
            studentDisplay.sizeToFit()
            studentDisplay.numberOfLines=7
            studentDisplay.textAlignment = NSTextAlignment.Center
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"}
            
        else if (compare == "Lucinda" || compare == "Lucinda Krahl" || compare == "Krahl"){
            studentDisplay.text = Lucinda.description
            studentDisplay.sizeToFit()
            studentDisplay.numberOfLines=7
            studentDisplay.textAlignment = NSTextAlignment.Center
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"}
        else if (compare == "Jose" || compare == "Jose Suarez" || compare == "Suarez") {
            studentDisplay.text = Jose.description
            studentDisplay.sizeToFit()
            studentDisplay.numberOfLines=7
            studentDisplay.textAlignment = NSTextAlignment.Center
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"}
        else if (compare == "Katie" || compare == "Katie Kuenster" || compare == "Kuenster") {
            studentDisplay.text = Katie.description
            studentDisplay.sizeToFit()
            studentDisplay.numberOfLines=7
            studentDisplay.textAlignment = NSTextAlignment.Center
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"}
        else {
            self.searchText.text = ""
            self.searchText.placeholder = "Enter Name"
            studentDisplay.text = "No Result Found. Please Search Again."
        }

}

}

