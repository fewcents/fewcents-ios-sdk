//
//  ArticleListTableController.swift
//  FewcentsSwiftSample
//
//  Created by Chowdhury Md Rajib  Sarwar on 31/7/21.
//

import UIKit

class ArticleListTableController: UITableViewController {

    var newsList: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsList = loadJson(filename: "news") ?? []
        navigationItem.addNavBarImage()
    }
    
    func loadJson(filename fileName: String) -> [News]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let json = try JSONDecoder().decode(DataSet.self, from: data)
                return json.data
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultTableCell", for: indexPath)
        
        cell.textLabel?.text = newsList[indexPath.row].title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row <= 4 {
            performSegue(withIdentifier: "tableToDetail", sender: indexPath.row)
        } else if indexPath.row == 5 {
            performSegue(withIdentifier: "tableToDMVideo", sender: indexPath.row)
        } else if indexPath.row == 6 {
            performSegue(withIdentifier: "tableToJWPlayer", sender: indexPath.row)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = sender as? Int {
            if segue.identifier == "tableToDetail" {
                if let destination = segue.destination as? ArticleDetailViewController {
                    let news = newsList[index]
                    destination.data = news
                }
            } /*else if segue.identifier == "tableToDMVideo" {
                if let destination = segue.destination as? DMVideoViewController {
                    let news = newsList[index]
                    destination.data = news
                }
            } else if segue.identifier == "tableToJWPlayer" {
                if let destination = segue.destination as? JWPlayerViewController {
                    let news = newsList[index]
                    destination.data = news
                }
            }*/
        }
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
