//
//  Survey.swift
//  Assignment1
//
//  Created by Mary Kate Nawalaniec on 1/26/16.
//  Copyright (c) 2016 Mary Kate Nawalaniec. All rights reserved.
//

import Foundation


enum Classification{
    case Freshman
    case Sophomore
    case Junior
    case Senior
}

class Survey{
    var fname: String
    var lname: String
    var hometown: String
    var type: Classification?
    // var dob: NSDateFormatter?
    // var age: Float
    
    //  init (dateString:String) {
    //     let dateStringFormatter = NSDateFormatter()
    //       dateStringFormatter.dateFormat = "MM-DD-YYYY"
    //  }
    
    //no birthday provided
    init(fname:String, lname: String, hometown: String, type: Classification//, //dob: NSDateFormatter
        ){
            self.fname=fname
            self.lname=lname
            self.hometown=hometown
            self.type=type
            // self.dob = dob
            
    }
    
    //birthday provided
    //  init (fname:String, lname: String, hometown: String, type: Classification, dob: NSDateFormatter){
    //self.fname=fname
    // self.lname=lname
    // self.hometown=hometown
    // self.type=type
    //  self.dob=dob
    //  self.age=
    
    // }
}


var Cory = Survey(fname: "Cory", lname: "Jbara", hometown: "Waterford, MI", type: Classification.Junior)
var Victor = Survey(fname: "Victor", lname: "Hawley", hometown: "Los Angeles, CA", type: Classification.Senior//, dob: "10-31-1993"
)
var Lucinda = Survey(fname: "Lucinda", lname: "Krahl", hometown: "Lindsay, TX", type: Classification.Senior//, dob: "02-25-1994"
)
var Jose = Survey(fname: "Jose", lname: "Suarez", hometown: "Monterrey, Mexico", type: Classification.Junior//, dob: "06-14-1994"
)
var Katie = Survey(fname: "Katie", lname: "Kuenster", hometown: "St.Paul, MN", type: Classification.Junior//, dob: "02-05-1995"
)


struct student: CustomStringConvertible{
    var description: String {
        return "Name: \(Cory.fname) \(Cory.lname) Hometown: \(Cory.hometown) Class: \(Cory.type)"
    }
}
