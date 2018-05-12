//
//  FotosTableViewController.swift
//  tut
//
//  Created by Marvel Alvarez on 11/8/16.
//  Copyright (c) 2016 Marvel Alvarez. All rights reserved.
//

import UIKit

class FotosTableViewController: UITableViewController {
    
    //Properties
    
    var listafotos = [Foto?]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFotos()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadFotos(){
        
        let f1 = Foto(nombre: "rosa", foto: UIImage(named: "rosa"), valoracion: 3)
        let f2 = Foto(nombre: "rosa1", foto: UIImage(named: "rosa1"), valoracion: 3)
        let f3 = Foto(nombre: "elis1", foto: UIImage(named: "elis1"), valoracion: 5)
        
        listafotos += [f1,f2,f3]
        
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the number of rows in the section.
        return listafotos.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cellIdentifier = "FotosTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier("FotosTableViewCell", forIndexPath: indexPath) as!
        FotosTableViewCell
        
        let tempcell = listafotos[indexPath.row]
        
        cell.LName.text = tempcell!.nombre
        cell.foto.image = tempcell?.foto
        cell.RatingObj.valoracion = tempcell!.valoracion
        
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
