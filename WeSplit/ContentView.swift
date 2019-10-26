//
//  ContentView.swift
//  WeSplit
//
//  Created by Levit Kanner on 25/10/2019.
//  Copyright © 2019 Levit Kanner. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Properties
    @State var numberOfPeople = 0
    @State var tipPercentage = 0
    @State var checkAmount = ""
    let tipSizes = [10,15,20,25,0]
    
    //Body definition
    var body: some View{
        NavigationView{
            Form{
                Section{
                    TextField("CheckAmount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2..<100){
                            Text("\($0)people")
                        }
                    }
                }
                
                Section{
                    Picker("TipPercentage", selection: $tipPercentage) {
                        ForEach(0..<tipSizes.count){
                            Text("\(self.tipSizes[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section{
                    Text("$\(checkAmount)")
                }
                .navigationBarTitle("WeSplit")

              
            }
        }
        }
    }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 What I have learnt today in SwiftUI ...
 1. Text views
 2. Forms
 3. Groups to break the child limit on items
 4. Section to group items in a form
 5. Navigation View
 6. Buttons
 7. Property wrappers -- @states allows mutation of a variable in a struct
 8. Two-binding(Read and Write a variable) with $
 9. Pickers and using ForEach to loop and create views
 */
