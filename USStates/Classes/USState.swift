/**
   USState.swift
   NodeDomainModel
 
   Created by Kasim Te on 11/21/2017.
   Copyright 2017. All rights reserved.
 */

import Foundation


/// Represents a US State (e.g., California or Massachusetts).
public struct USState {
  public var abbreviation: String
  
  // Initialize with the standard state abbreivation (e.g., CA or MA).
  // Returns nil if a US State doesn't exist for the given abbreivation.
  public init?(abbreviation: String) {
    guard USState.stateDictionary[abbreviation] != nil else {
      return nil
    }
    
    self.abbreviation = abbreviation
  }
  
  public var fullName: String {
    // This should never return the default as this was used as a check
    // in the constructor.
    return USState.stateDictionary[abbreviation] ?? "State"
  }
  
  public static func stateExists(for abbreviation: String) -> Bool {
    return USState.stateDictionary[abbreviation] != nil
  }
  
  private static let stateDictionary: [String: String] = [
    "AK": "Alaska",
    "AL": "Alabama",
    "AR": "Arkansas",
    "AS": "American Samoa",
    "AZ": "Arizona",
    "CA": "California",
    "CO": "Colorado",
    "CT": "Connecticut",
    "DC": "District of Columbia",
    "DE": "Delaware",
    "FL": "Florida",
    "GA": "Georgia",
    "GU": "Guam",
    "HI": "Hawaii",
    "IA": "Iowa",
    "ID": "Idaho",
    "IL": "Illinois",
    "IN": "Indiana",
    "KS": "Kansas",
    "KY": "Kentucky",
    "LA": "Louisiana",
    "MA": "Massachusetts",
    "MD": "Maryland",
    "ME": "Maine",
    "MI": "Michigan",
    "MN": "Minnesota",
    "MO": "Missouri",
    "MS": "Mississippi",
    "MT": "Montana",
    "NC": "North Carolina",
    "ND": " North Dakota",
    "NE": "Nebraska",
    "NH": "New Hampshire",
    "NJ": "New Jersey",
    "NM": "New Mexico",
    "NV": "Nevada",
    "NY": "New York",
    "OH": "Ohio",
    "OK": "Oklahoma",
    "OR": "Oregon",
    "PA": "Pennsylvania",
    "PR": "Puerto Rico",
    "RI": "Rhode Island",
    "SC": "South Carolina",
    "SD": "South Dakota",
    "TN": "Tennessee",
    "TX": "Texas",
    "UT": "Utah",
    "VA": "Virginia",
    "VI": "Virgin Islands",
    "VT": "Vermont",
    "WA": "Washington",
    "WI": "Wisconsin",
    "WV": "West Virginia",
    "WY": "Wyoming"]
}
