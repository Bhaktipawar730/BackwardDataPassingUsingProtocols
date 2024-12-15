
//  ViewController.swift
//  BackDataPassingUsing Prortocols
//  Created by Mac on 15/10/2024



import UIKit

//step 4 - conform to protocol
class ViewController: UIViewController,BackDataPassing {
   
    @IBOutlet weak var firstNamelabel: UILabel!
    
    private var reuseIdentifier = "SecondViewController"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
   
    }
    
    //step 5--implement stubs
    func backDataPass(firstName: String) {
        
        self.firstNamelabel.text = firstName
        
    }

    @IBAction func btnNext(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifier) as!SecondViewController
        
        secondViewController.backDataPassDelegte = self
        
        //step 6 -- assign delegate property to self i.e.current instance
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}

