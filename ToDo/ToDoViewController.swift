//
//  ViewController.swift
//  ToDo
//
//  Created by Subhransu Siddhant Sagar on 26/02/23.
//

import UIKit

class ToDoViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tblView: UITableView!
    
    
    @IBAction func Create(_ sender: UIButton, forEvent event: UIEvent) {
        let goToNew = self.storyboard?.instantiateViewController(withIdentifier: "newViewController") as! newViewController
        self.present(goToNew, animated: true)
    }
    
    
    @IBAction func Cclicked(_ sender: UIButton, forEvent event: UIEvent) {
        self.view.backgroundColor = UIColor.black
        
//        let goToComplete = self.storyboard?.instantiateViewController(withIdentifier: "filteredViewController") as! filteredViewController
//
//        self.present(goToComplete, animated: true)
//
    }
    
    
    @IBAction func Iclicked(_ sender: UIButton, forEvent event: UIEvent) {
        self.view.backgroundColor = UIColor.red
//
//        let goToincomplete = self.storyboard?.instantiateViewController(withIdentifier: "filteredViewController") as! filteredViewController
//
//        self.present(goToincomplete, animated: true)
        
        
    }
    
    
    
  struct ToDo {
        var todoTitles: [String] = ["Java","meeting","Medical"]
        var todoDetails: [String] = ["build android app in java with android studio","attend meeting in discord on 2.30pm","go to medical on sunday"]
        var statuss:[Bool] = [true,false,true]
    }
    var ToDo1 = ToDo()
    
    func filt(){
    struct Completed {
        var Ctitle:[String] = []
        var Cdetail:[String] = []
        
    }
        struct incompleted {
            
            var Ititle:[String] = []
            var Idetail:[String] = []
        }
        var incompleted1 = incompleted()
        
        var Completed1 = Completed()
        var i:Int = 0
        for _ in ToDo1.statuss {
            if ToDo1.statuss[i] == true{
                
                Completed1.Ctitle.append(ToDo1.todoTitles[i])
                Completed1.Cdetail.append(ToDo1.todoDetails[i])
                i = i + 1
       
            }
            else{
                incompleted1.Ititle.append(ToDo1.todoTitles[i])
                incompleted1.Idetail.append(ToDo1.todoDetails[i])
                i = i + 1
                
            }
         
        }
    }
    
   
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         filt()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ToDo1.todoTitles.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        Cell.todoTitle.text = ToDo1.todoTitles[indexPath.row]
        Cell.todoDetail.text = ToDo1.todoDetails[indexPath.row]
        if ToDo1.statuss[indexPath.row] == true {
            
            Cell.status.text = "Completed"
            
        }else {
            Cell.status.text = "Incomplete"
        }
        
        
        return Cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  self.view.backgroundColor = UIColor.black
   
        let next = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        next.DTitle = ToDo1.todoTitles[indexPath.row]
        next.DDetail = ToDo1.todoDetails[indexPath.row]
        next.DStatus = ToDo1.statuss[indexPath.row]
        next.InPath = indexPath.row

            self.present(next, animated: true)
  }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
    
         if editingStyle == .delete{
            ToDo1.todoTitles.remove(at: indexPath.row)
            ToDo1.todoDetails.remove(at: indexPath.row)
            ToDo1.statuss.remove(at: indexPath.row)
            tblView.deleteRows(at: [indexPath], with:.fade)
        }
        
        
        
    }
    
   
}


