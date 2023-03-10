//
//  DetailViewController.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 27/02/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var Dtitle: UILabel!
    
    
    @IBOutlet weak var Ddetail: UILabel!
    
    @IBAction func CompleteClicked(_ sender: UIButton, forEvent event: UIEvent) {
        
        let goToListPage = self.storyboard?.instantiateViewController(withIdentifier: "ToDoViewController") as! ToDoViewController
        
        goToListPage.ToDo1.statuss[InPath] = true
        
        
        self.present(goToListPage, animated: true)
       
        
    }
    
    
    
    @IBAction func editButton(_ sender: UIButton, forEvent event: UIEvent) {
        
        
        
        
        let go = self.storyboard?.instantiateViewController(withIdentifier: "editViewController") as! editViewController
        
        go.Etitle = DTitle
        go.Edetail = DDetail
        go.IndPath = InPath
        
            self.present(go, animated: true)
        
  
    }
    
    
    var DTitle:String!
    var DDetail:String!
    var DStatus:Bool!
    var InPath:Int!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Dtitle.text = DTitle
        Ddetail.text = DDetail
    

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
