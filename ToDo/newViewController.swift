//
//  newViewController.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 01/03/23.
//

import UIKit

class newViewController: UIViewController {
    
    
    @IBOutlet weak var newTitle: UITextField!
    
    @IBOutlet weak var newDetail: UITextField!
    
    
    @IBAction func CreateClicked(_ sender: UIButton, forEvent event: UIEvent) {
        
        
        let goToList = self.storyboard?.instantiateViewController(withIdentifier: "ToDoViewController") as! ToDoViewController
        
        goToList.ToDo1.todoTitles.append(newTitle.text!)
        goToList.ToDo1.todoDetails.append(newDetail.text!)
        goToList.ToDo1.statuss.append(false)
    
        self.present(goToList, animated: true)
 
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
