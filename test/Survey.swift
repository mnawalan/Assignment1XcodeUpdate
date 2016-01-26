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
    
        var description: String{
            

        switch self {
        case .Freshman: return "Freshman";
        case .Sophomore: return "Sophomore";
        case .Junior: return "Junior";
        case .Senior: return "Senior";
        
        }
    }
}

class Survey{
    var fname: String
    var lname: String
    var hometown: String
    var type: Classification
    var date: Int?
    var month: Int?
    var year: Int?
    var age: Double?
    

 
    init(fname:String, lname: String, hometown: String, type: Classification, date: Int?, month: Int?, year: Int?
        ){
            self.fname = fname
            self.lname = lname
            self.hometown = hometown
            self.type = type
           self.date = date
           self.month = month
           self.year = year
        
    }
}

func calculateAge(year: Int, month: Int, date: Int)->Double{
    let myDOB = NSCalendar.currentCalendar().dateWithEra(1, year: year, month: month, day: date, hour: 0, minute: 0, second: 0, nanosecond: 0)!
    let myAge = myDOB.timeIntervalSinceNow
    return myAge
}

let age = calculateAge(1994, month: 11, date: 16)*(-1)
let ageyear = age/(3.154e7)
let printAge = String(format: "%.3f", ageyear)


extension Survey : CustomStringConvertible {
    var description: String {
        return "\n"
            +  "    Name: \(fname) \(lname)\n"
            +  "    Hometown: \(hometown)\n"
            +  "    Class: \(type.description)\n"
            +  "    Birthday: \(month!)/\(date!)/\(year!)\n"
            +  "    Age: \(printAge) years old"
     
    }
}



//struct student: CustomStringConvertible{
 
   // var description: String {

      //  return "\(Cory)"
        
   /// }
//}







//write a method dateStringAs that accepts an NSDateFormatter and returns the formatted date as a string

func dateStringAs(_: NSDateFormatter) ->String {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let d = NSDate()
    let s = dateFormatter.stringFromDate(d)
    return s
}
