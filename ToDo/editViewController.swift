//
//  editViewController.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 28/02/23.
//

import UIKit

class editViewController: UIViewController {
    
    
    
    @IBOutlet weak var editTitle: UITextField!
    
    
    
    @IBOutlet weak var editDetails: UITextField!
    
    
    
    @IBAction func doneClicked(_ sender: Any, forEvent event: UIEvent) {
        
        
        var editedTitle:String! = editTitle.text
        var editedDetail:String! = editDetails.text
        
        
        let goToList = self.storyboard?.instantiateViewController(withIdentifier: "ToDoViewController") as! ToDoViewController
        
        goToList.ToDo1.todoTitles[IndPath] = editedTitle
        goToList.ToDo1.todoDetails[IndPath] = editedDetail
        
        
        self.present(goToList, animated: true)
        
        
        
    }
    
    var Etitle:String!
    var Edetail:String!
    var IndPath:Int!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        editTitle.text = Etitle
        editDetails.text = Edetail

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
