//
//  SecondViewController.swift
//  BackDataPassingUsing Prortocols
//  Created by Mac on 15/10/2024.


import UIKit

//step1-- Create a protocol
protocol BackDataPassing{
    func backDataPass(firstName : String)
}

class SecondViewController: UIViewController {

   
    @IBOutlet weak var firstNameTextField: UITextField!
    
    //Step2-- create a property of protocol
    var backDataPassDelegte : BackDataPassing?
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnBack(_ sender: Any) {
        guard let delegate1 = backDataPassDelegte else {return}
        
        let firstName = self.firstNameTextField.text
        
        //step3-- passing data by using delegate
        
        delegate1.backDataPass(firstName: firstName ?? "")
        
        self.navigationController?.popViewController(animated: true)
    }
}
