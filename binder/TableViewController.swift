//
//  TableViewController.swift
//  binder
//
//  Created by 하유림 on 2021/11/26.
//

import UIKit

struct Place {
    var classColor : String
    var studentName : String
    var subjectName : String
    var subjectGoal : String
    var studentEmail : String
}

var placeList = [Place]()

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1.0)
        
        self.tableView.separatorStyle = .none
        
        placeList.append(Place(classColor: "#AB0101", studentName: "양성혜 학생", subjectName: "수학", subjectGoal: "수학 1등급 받기!", studentEmail: "yurlm20@naver.com"))
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return placeList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle(for:CardTableViewCell.self).loadNibNamed("CardTableViewCell", owner:self, options:nil)?.first as! CardTableViewCell
    
        
        
        // Configure the cell...
        cell.classColor.text = placeList[indexPath.row].classColor
        cell.studentName.text = placeList[indexPath.row].studentName
        cell.studentEmail.text = placeList[indexPath.row].studentEmail
        cell.subjectGoal.text = placeList[indexPath.row].subjectGoal
        cell.subjectName.text = placeList[indexPath.row].subjectName
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
