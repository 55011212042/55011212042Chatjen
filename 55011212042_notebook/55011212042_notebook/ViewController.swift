//
//  ViewController.swift
//  55011212042_Notebook
//
//  Created by iStudents on 3/20/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDataSource {
    
    var items=[NSManagedObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBOutlet weak var tableView: UITableView!
    @IBAction func addButton(sender: AnyObject) {
        var alert=UIAlertController(title: "New item", message: "Add a new item", preferredStyle: .Alert)
        
        let saveAction=UIAlertAction(title: "Save", style: .Default) { (action: UIAlertAction!) -> Void in
            let textField=alert.textFields![0] as UITextField

            self.addNote(textField.text)
            self.tableView.reloadData()
            
            
        }
        
        let cancelAction=UIAlertAction(title: "Cancel", style: .Default) { (action: UIAlertAction!) -> Void in
            
        }
        
        alert.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
            
        }
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)

    }
    func addNote(name: String){
        let appDelegate=UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext=appDelegate.managedObjectContext!
        
        let entity=NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item=NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        items.append(item)
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        let item=items[indexPath.row]
        cell.textLabel!.text=item.valueForKey("name") as String?
        
        return cell
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
// delete on view
        let appDel:AppDelegate=UIApplication.sharedApplication().delegate as AppDelegate
        let context:NSManagedObjectContext=appDel.managedObjectContext!
        if editingStyle == UITableViewCellEditingStyle.Delete{
            context.deleteObject(items[indexPath.row] as NSManagedObject)
            items.removeAtIndex(indexPath.row)
            context.save(nil)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
        }
        
    }
    func saveName(name: String){
        let appDelegate=UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext=appDelegate.managedObjectContext!
        
        let entity=NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item=NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error: NSError?
        if !managedContext.save(&error) {
            println("Could not save \(error), \(error?.userInfo)")
        }
        
        items.append(item)
    }
    override func viewWillAppear(animated: Bool) {
        let appDelegate=UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext=appDelegate.managedObjectContext!
        
        let fetchRequest=NSFetchRequest(entityName: "Item")
        
        var error: NSError?
        
        let fetchedResults=managedContext.executeFetchRequest(fetchRequest, error: &error) as [NSManagedObject]?
        
        if let results=fetchedResults{
            items=results
        } else {
            println("Could not feth \(error),\(error!.userInfo)")
        }
    }
}

